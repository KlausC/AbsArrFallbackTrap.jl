module AbsArrFallbackTrap


export ImplementationType, DefaultImplementationType
export Delegate, implementation_type

abstract type ImplementationType end
struct DefaultImplementationType <: ImplementationType end

"""
    implementation_type(::Type{<:AbstractArray})

Return datatype for given array type.
"""
implementation_type(::Type{<:AbstractArray}) = DefaultImplementationType

"""
    implementation_trait(::Type{<:AbstractArray})

Return implementation trait object for given array type.
"""
implementation_trait(::Type{T}) where {T} = implementation_type(T)()

"""
    Delegate(A::AbstractArray, ::Type{<:ImplementationType})

Construct a delegate object, which adds implementation type to array.
All implementation methods shall use this type instead of `AbstractArray`.
"""
struct Delegate{M<:AbstractArray,I<:ImplementationType}
    val::M
    function Delegate(A::M) where {M<:AbstractArray}
        I = implementation_type(M)
        new{M,I}(A)
    end
end

# in module defining the wrapper types
using LinearAlgebra

implementation_type(::Type{<:Symmetric{T,M}}) where {T,M} = implementation_type(M)
implementation_type(::Type{<:Hermitian{T,M}}) where {T,M} = implementation_type(M)
implementation_type(::Type{<:UpperTriangular{T,M}}) where {T,M} = implementation_type(M)
implementation_type(::Type{<:LowerTriangular{T,M}}) where {T,M} = implementation_type(M)
implementation_type(::Type{<:SubArray{T,N,M}}) where {T,N,M} = implementation_type(M)
# end wrapper module

# in sparse module:
using SparseArrays
export SparseImplementationType

struct SparseCSCImplementationType <: ImplementationType end

implementation_type(::Type{<:SparseArrays.AbstractSparseMatrixCSC}) = SparseCSCImplementationType
# end sparse module


include("delegate.jl")
end
