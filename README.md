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

Type dispatching is on the basis of the argument types of the methods. For deeply nested wrappers, the best available type info is `AbstractMatrix`.

In order to direct the call of the unchanged API to the correct implementation method, it is necessary to use type data, which are not visible to the
dispatching system, if only the argument type is available.

It is possible to generate additional useful type information by a dedicated data type, which has to be derived from the original concrete type of the
argument, a so-called "Trait". The trait object (or the type itself) are provided as an additional argument to the function, for each `AbstractMatrix`
argument.

This package defines `DTrait{M,Tr}`, which contains the original argument type in `M` and the additional trait data type in `Tr`.
As it contains the original object as a member (like `Ref`), it is possible to replace each argument `a` by a single `DTrait(a)` argument.
Experiments show, that the compiler generates the same code, when use the `DTraits` pattern is used, compared to the case when a second traits argument is
provided. All what is needed can be done at compile time.

## Example

Assume a function for multiplication of matrices.

```julia
    function mul(a::AbstractMatrix, b::AbstractMatrix)
        # implementation massively using array accessors [i,j]
    end
```

That would be transformed to

```julia
    mul(a::AbstractMatrix, b::AbstractMatrix) = mul_implementation(Dtrait(a), DTrait(b))

    function mul_implementation(a::DTrait{A,Tr}, b::DTrait{B,Tr}) where {A,B,Tr<:DefaultImplementationType}
        mul_intern(a[], b[])
    end

    function mul_intern(a::AbstractMatrix, b::AbstractMatrix) # renaming the original function
        # implementation as above
    end
```

Now all cases, which are not covered by the double `DefaultImplementationType` are directed to the sparse method

```julia
    function mul_implementation(a::DTrait, b::DTrait)
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

