module AbsArrFallbackTrap


export ImplementationType, DefaultImplementationType
export DTrait, implementation_type

abstract type ImplementationType end
struct DefaultImplementationType{M} <: ImplementationType end

"""
    implementation_type(::Type{<:AbstractArray})

Return datatype for given array type.
"""
implementation_type(::Type{M}) where M = DefaultImplementationType{M}
implementation_type(::T) where {T} = implementation_type(T)

"""
    implementation_trait(::Type{<:AbstractArray})

Return implementation trait object for given array type.
"""
implementation_trait(::Type{T}) where {T} = implementation_type(T)()

"""
    DTrait(A::M, f = implementation_type) where M -> dt::DTrait{M,IT}

Construct a DTrait object, which combines the object `A` and a type dependent
implementation type `IT`.

The object can be retrieved with `dt[]`.
The optional function `f` is applied to `A` and must return a constant value or type
which is used as the second type parameter of `DTrait`.
"""
struct DTrait{M,I}
    x::M
    DTrait(A::M, f) where {M} = new{M,f(A)}(A)
end
DTrait(A::Any) = DTrait(A, implementation_type)

import Base.getindex
Base.getindex(A::DTrait) = A.x

# in module defining the wrapper types
using LinearAlgebra

for W in (Symmetric, Hermitian,
    LowerTriangular, UnitLowerTriangular, UpperTriangular, UnitUpperTriangular,
    Transpose, Adjoint, Diagonal, Bidiagonal, Tridiagonal, SymTridiagonal)
    @eval implementation_type(::Type{<:$W{T,M}}) where {T,M} = implementation_type(M)
end
implementation_type(::Type{<:SubArray{T,N,M}}) where {T,N,M} = implementation_type(M)
# end wrapper module

# in sparse module:
using SparseArrays
using SparseArrays: AbstractSparseMatrixCSC
export SparseImplementationType

struct SparseImplementationType{T} <: ImplementationType end

const AbstractSparseVecOrMat = Union{AbstractSparseVector, AbstractSparseMatrix}
implementation_type(::Type{M}) where M<:AbstractSparseVecOrMat = SparseImplementationType{M}

# end sparse module


include("delegate.jl")
include("methods.jl")
include("codeanalysis.jl")
end
