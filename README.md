# AbstractArray Fallback Trap

[![Build Status](https://github.com/KlausC/AbsArrFallbackTrap.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/KlausC/AbsArrFallbackTrap.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/KlausC/AbsArrFallbackTrap.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/KlausC/AbsArrFallbackTrap.jl)

## Intro

This is a sandbox package to try out strategies to overcome the "AbstractArray Fallback Trap" which is present in `stdlib/LinearAlgebra`.

Core of the problem is, that there are implementation methods for arithmitc operations (first of all `*` and `+`), with signatures like
`*(::AbstractMatrix, ::AbstractVector)` which rely on the existence of fast `O(1)` access methods `getindex` / `setindex`.

This assumption is false for some subtypes of `AbstractArray`, though like sparse matrices.
That is overcome by defining specialized methods for the subtypes.

That is problematic, for subtypes of `AbstractArray`, which are constructed by "wrapper" types like `Symmetric`, `UpperTriangular`, etc.,
and other types, which definitively don't support `getindex` efficiently, but are `<: AbstractArray`.

While this [RFC PR46196](https://github.com/JuliaLang/julia/pull/46196) attacks the special case of `AbstractQ`, we want to follow a more general approach.

This package makes use of traits or similar patterns, in contrast to [PR 31563](https://github.com/JuliaLang/julia/pull/31563), which tried to
extend the established type hierarchy, which was not accepted.
Once the technique is clear, a PR for `stdlib/LinearAlgebra`, `stdlib/SparseArrays` shall follow.

## A Trait Based Approach

Type dispatching is on the basis of the argument types of the methods. For deeply nested wrappers, the practical available type info is `AbstractMatrix`.
It would be unrealistic to make specialized methods for many of these unbounded number of possibilities.

In order to direct the call of the unchanged API to the correct implementation method, it is necessary to use type data, which are not visible to the
dispatching system, if only the argument type is available.

It is possible to generate additional useful type information by a dedicated data type, which has to be derived from the original concrete type of the
argument, a so-called "Trait". The trait object (or the type itself) are provided as an additional argument to the function, for each `AbstractMatrix`
argument.

This package defines `DTrait{M,Tr}`, which contains the original argument type in `M` and the additional trait data type in `Tr`.
As it contains the original object as a member (like `Ref`), it is possible to replace each argument `a` by a single `DTrait(a)` argument.
Experiments show, that the compiler generates the same code, when the `DTraits` pattern is used, compared to the case when a second traits argument is
provided. That leads to a pure static dispatching effort.

## Example

Assume a function for multiplication of matrices.

```julia
    function mul(a::AbstractMatrix, b::AbstractMatrix)
        # original implementation massively using array accessors [i,j]
    end
```

That would be transformed to

```julia
    mul(a::AbstractMatrix, b::AbstractMatrix) = mul(Dtrait(a), DTrait(b))

    function mul(a::DTrait{A,Tr}, b::DTrait{B,Tr}) where {A,B,Tr<:DefaultImplementationType}
        mul_intern(a[], b[])
    end

    function mul_intern(a::AbstractMatrix, b::AbstractMatrix) # renaming the original function
        # original implementation
    end
```

Now all cases, which are not covered by the double `DefaultImplementationType` are directed to the sparse method

```julia
    function mul(a::DTrait, b::DTrait)
        mul(sparse(a[]), sparse(b[])) # use the existing sparse implementation (which dispatches on sparse types)
    end
```

The example is over-simplistic with regard to the 3 cases of sparse/strided combinations, which could be handled
better in specialized implementations each.

## Future Development

There are currently ~ 300 methods in the base packages and `Stdlib`, which have at least one argument of type `AbstractMatrix`.
They would be called also for deeply wrapped sparse Matrices (if there is no explicit implementation for the wrapped type).
They need be verified manually and maybe changed using the pattern.

That means approximately 7 lines of code to be added for each method which needs adaptation.

In the `SparseArrays` stdlib package, some simplifications should be possible, where currently dynamic dispatching is used.
See file [sparseconvert](https://github.com/JuliaSparse/SparseArrays.jl/blob/31b491e431d0b9c4e5e17fdcbbc9f71579e7c79c/src/sparseconvert.jl#L78)

## Methods to change

The following code snippet selects all methods, which have a supertype of `AbstractMatrix` as an argument and
use `getindex` or `setindex!` in their implementation:

```julia
    methods_with_getset(AbstractMatrix, supertypes=true)
```

which outputs:
[output-1.8.4](https://github.com/KlausC/AbsArrFallbackTrap.jl/blob/main/test/out-1.8.4.md) of 95 methods to be processed.
[output-1.10](https://github.com/KlausC/AbsArrFallbackTrap.jl/blob/main/test/out-1.10dev.md) of 119 methods to be processed.

## Observations

### Existing Type Hierarchy

Currently (at lease v1.5 - v1.10) we have

```jldoctest
julia> supertypes(Array)
(Array, DenseArray, AbstractArray, Any)
```

All those types are implemented in `C` and it would be a hard challenge to change that hierarchy, for example by trying to insert
something above `AbstractArray`.

### Array Types with efficient `getindex` / `setindex!`

It seems the algorithms, which use argument types `AbstractArray` are optimally suited for subtypes of `DenseArray` and a few others,
but suffer from bad runtime behaviour for many other types. Actually there exists:

```md
  StridedArray{T, N}

  A hard-coded Union of common array types that follow the strided array interface, with elements of type T and N dimensions.

  If A is a StridedArray, then its elements are stored in memory with offsets, which may vary between dimensions but are constant within a dimension. For example, A
  could have stride 2 in dimension 1, and stride 3 in dimension 2. Incrementing A along dimension d jumps in memory by [strides(A, d)] slots. Strided arrays are
  particularly important and useful because they can sometimes be passed directly as pointers to foreign language libraries like BLAS.
```

which is defined as

```julia
StridedArray{T,N} = Union{DenseArray{T,N}, StridedSubArray{T,N}, StridedReshapedArray{T,N}, StridedReinterpretArray{T,N}}
```

It would be useful to have an extendable union to allow insertion of custon types.

```jldoctest
julia> abstract type AbstractFastAccessArray{T,N} <: AbstractArray{T,N} end

julia> FastArray{T,N} = Union{StridedArray{T,N}, AbstractFastAccessArray{T,N}}

```

In the following we assume, that the unions `FastArray`, `FastMatrix`, `FastVector`, `FastVecOrMat` have been defined.
The names are subject to improvement. Only the case `AbstractArray`/`FastArray` is explicitly mentionend.

## A Plan for Improvement

### Step 1: Identfy Affected Methods

We are looking for all methods in `Base` and `Stdlib`, which apply `getindex` or `setindex!` with first argument of a type,
which cannot be guaranteed to have type `FastArray`.
Those methods have at least one argument of a type, which is a subtype of `AbstractArray` and not of `FastArray`.
That includes `AbstractArray` itself, but also the typical wrapper types like `Adjoint`, `SubArray` and others.

### Step 2: Setup DTraits

Define `DTrait` and `implementation_type` as shown in `AbsArrFallbackTrap.jl` (only `DefaultImplementationType` required).
The definition need to be visible in all modules containing affected methods.

### Step 3: Prioritize Affected Methods

As we expect approximately more than 100 affected methods, find an appropriate order in which they are processed.
Steps 4 and 5 may be iterated for groups of methods.

The following step is executed for each of the methods to be transformed.

### Step 4: Split Method into Three

Like shown in the example, make 3 methods for each one:

#### Original API

The original signature is kept. The body is calling a new method with the same name, but all affected arguments `a` are
replaced by `DTrait(a)`.

#### Traited Signature

The second method has the same name, but in the signature each affected type `T` is replaced by `DTrait{T,<:ImplementationType}`.
The `Dtrait` constructor assures that all `FastArray` arguments obtain the `DefaultImplementationType`.

As long as there are no specializations of this method with restricted `ImplementationType`, for all types this default
implementation is used. That is the same situation as now; the trap is still there. But there is a way to avoid it in a further step.

This method calls the original implementation method, with a modified name.

#### Original Implementation

The third method is the original one, with a new name. The function `name` is changed to `name_intern`. No overlaps with existing names
are allowed.

This method has only the name changed, the rest of the signature is kept. That allows types which are not `FastArray`s to fall back
to this implementation intentionally, if that makes sense.

### Step 5: Specialization for Slow Types

Now we can define methods with the "traited signature" and arguments with specialized trait types like `DTrait{T,ImplementationTypeSparse}`.
It is possible to do that in an iterative way, for most important cases first.
