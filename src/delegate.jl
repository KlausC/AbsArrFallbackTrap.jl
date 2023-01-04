
export usum_del, usum_trait, usum_traittype

"""
    usum_del(array)

Return sum of elements of array. User facing -> Delegates Implementation.
"""
function usum_del(A::AbstractMatrix)
    imp(Delegate(A))
end

# delegate based implementations for 3 use cases
function imp(D::Delegate{<:AbstractMatrix,DefaultImplementationType})
    _usum_loop(D.val)
end

function imp(D::Delegate{<:SparseMatrixCSC,SparseCSCImplementationType})
    _usum_loop(nonzeros(D.val))
end

function imp(D::Delegate{<:AbstractMatrix,SparseCSCImplementationType})
    _usum_loop(nonzeros(sparse(D.val)))
end

"""
    usum_trait(array)

Return sum of elements of array. User facing -> Traits Implementation.
"""
function usum_trait(A::M) where {M<:AbstractMatrix}
    imp(A, implementation_trait(M))
end

"""
    usum_traittype(array)

Return sum of elements of array. User facing -> Trait Types Implementation.
"""
function usum_traittype(A::M) where {M<:AbstractMatrix}
    imp(A, implementation_type(M))
end

# traits based implementations for 3 use cases
function imp(A::AbstractMatrix, ::Union{T,Type{T}}) where {T<:DefaultImplementationType}
    _usum_loop(A)
end

function imp(A::SparseMatrixCSC, ::Union{T,Type{T}}) where {T<:SparseCSCImplementationType}
    _usum_loop(nonzeros(A))
end

function imp(A::AbstractMatrix, ::Union{T,Type{T}}) where {T<:SparseCSCImplementationType}
    _usum_loop(nonzeros(sparse(A)))
end

# incidentally identical implementation usable for all variants
function _usum_loop(A::AbstractArray{T}) where {T}
    sum = zero(T)
    for i in eachindex(A)
        sum += A[i]
    end
    sum
end