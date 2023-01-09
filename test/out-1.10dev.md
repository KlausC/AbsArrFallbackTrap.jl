# output 1.10.0-DEV.294

```jldoctest
julia> methods_with_getset(Union{StridedArray,AbstractSparseArray} => AbstractMatrix, LinearAlgebra)
[1] /(A::UnitUpperTriangular, x::Number) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:876
[2] /(A::UnitLowerTriangular, x::Number) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:876
[3] \(x::Number, A::UnitUpperTriangular) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:887
[4] \(x::Number, A::UnitLowerTriangular) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:887
[5] \(xA::UnitUpperTriangular{<:TA, <:StridedMatrix{T} where T}, b::SparseArrays.AbstractCompressedVector{Tb}) where {TA<:Number, Tb<:Number} @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2026
[6] \(xA::UnitUpperTriangular{<:TA, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector{Tb}) where {TA<:Number, Tb<:Number} @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2026
[7] \(xA::UnitUpperTriangular{<:TA, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector{Tb}) where {TA<:Number, Tb<:Number} @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2026
[8] \(xA::UnitLowerTriangular{<:TA, <:StridedMatrix{T} where T}, b::SparseArrays.AbstractCompressedVector{Tb}) where {TA<:Number, Tb<:Number} @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2026
[9] \(xA::UnitLowerTriangular{<:TA, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector{Tb}) where {TA<:Number, Tb<:Number} @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2026
[10] \(xA::UnitLowerTriangular{<:TA, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector{Tb}) where {TA<:Number, Tb<:Number} @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2026
[11] \(xA::LowerTriangular{<:TA, <:StridedMatrix{T} where T}, b::SparseArrays.AbstractCompressedVector{Tb}) where {TA<:Number, Tb<:Number} @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2026
[12] \(xA::LowerTriangular{<:TA, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector{Tb}) where {TA<:Number, Tb<:Number} @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2026
[13] \(xA::LowerTriangular{<:TA, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector{Tb}) where {TA<:Number, Tb<:Number} @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2026
[14] \(xA::UpperTriangular{<:TA, <:StridedMatrix{T} where T}, b::SparseArrays.AbstractCompressedVector{Tb}) where {TA<:Number, Tb<:Number} @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2026
[15] \(xA::UpperTriangular{<:TA, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector{Tb}) where {TA<:Number, Tb<:Number} @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2026
[16] \(xA::UpperTriangular{<:TA, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector{Tb}) where {TA<:Number, Tb<:Number} @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2026
[17] copyto!(A::AbstractMatrix, J::UniformScaling) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:374
[18] copyto!(dest::AbstractMatrix, Rdest::CartesianIndices{2, R} where R<:Tuple{OrdinalRange{Int64, Int64}, OrdinalRange{Int64, Int64}}, src::SparseArrays.AbstractSparseMatrixCSC{T}, Rsrc::CartesianIndices{2, R} where R<:Tuple{OrdinalRange{Int64, Int64}, OrdinalRange{Int64, Int64}}) where T @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsematrix.jl:612
[19] copyto!(dest::SymTridiagonal, bc::Base.Broadcast.Broadcasted{<:LinearAlgebra.StructuredMatrixStyle}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/structuredbroadcast.jl:184
[20] copyto!(dest::Diagonal, bc::Base.Broadcast.Broadcasted{<:LinearAlgebra.StructuredMatrixStyle}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/structuredbroadcast.jl:155
[21] copyto!(dest::Tridiagonal, bc::Base.Broadcast.Broadcasted{<:LinearAlgebra.StructuredMatrixStyle}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/structuredbroadcast.jl:199
[22] copyto!(dest::Bidiagonal, bc::Base.Broadcast.Broadcasted{<:LinearAlgebra.StructuredMatrixStyle}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/structuredbroadcast.jl:165
[23] copyto!(dest::UpperTriangular, bc::Base.Broadcast.Broadcasted{<:LinearAlgebra.StructuredMatrixStyle}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/structuredbroadcast.jl:225
[24] copyto!(dest::LowerTriangular, bc::Base.Broadcast.Broadcasted{<:LinearAlgebra.StructuredMatrixStyle}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/structuredbroadcast.jl:213
[25] diag(A::AbstractMatrix, k::Integer) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/dense.jl:249
[26] dot(x::AbstractVector, A::Union{Hermitian{T, S}, Hermitian{Complex{T}, S}, Symmetric{T, S}} where {T<:Real, S}, y::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetric.jl:579
[27] dot(x::AbstractVector, A::UnitUpperTriangular, y::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:578
[28] dot(x::AbstractVector, A::Tridiagonal, y::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/tridiag.jl:813
[29] dot(x::AbstractVector, B::Bidiagonal, y::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/bidiag.jl:678
[30] dot(x::AbstractVector, A::UnitLowerTriangular, y::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:620
[31] dot(x::AbstractVector, S::SymTridiagonal, y::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/tridiag.jl:221
[32] dot(x::AbstractVector, A::LowerTriangular, y::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:600
[33] dot(x::AbstractVector, A::UpperTriangular, y::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:557
[34] dot(x::AbstractVector, H::UpperHessenberg, y::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:366
[35] dot(A::Symmetric, B::Symmetric) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetric.jl:423
[36] dot(A::Hermitian, B::Hermitian) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetric.jl:423
[37] dot(x::AbstractVector, A::AbstractMatrix, y::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/generic.jl:923
[38] eigmax(A::SymTridiagonal) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/tridiag.jl:278
[39] eigmax(A::Union{Hermitian{var"#s974", S}, Hermitian{Complex{var"#s974"}, S}, Symmetric{var"#s974", S}} where {var"#s974"<:Real, S}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetriceigen.jl:156
[40] eigmin(A::SymTridiagonal) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/tridiag.jl:279
[41] eigmin(A::Union{Hermitian{var"#s974", S}, Hermitian{Complex{var"#s974"}, S}, Symmetric{var"#s974", S}} where {var"#s974"<:Real, S}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetriceigen.jl:157
[42] eigvals!(A::Union{Hermitian{var"#s974", var"#s973"}, Hermitian{Complex{var"#s974"}, var"#s973"}, Symmetric{var"#s974", var"#s973"}} where {var"#s974"<:Union{Float32, Float64}, var"#s973"<:(StridedMatrix{T} where T)}, irange::UnitRange) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetriceigen.jl:83
[43] eigvals!(A::Union{Hermitian{T, var"#s974"}, Hermitian{Complex{T}, var"#s974"}, Symmetric{T, var"#s974"}} where var"#s974"<:(StridedMatrix{T} where T), vl::Real, vh::Real) where T<:Union{Float32, Float64} @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetriceigen.jl:123
[44] eigvecs(A::UnitUpperTriangular{<:Union{Float32, Float64, ComplexF32, ComplexF64}, <:StridedMatrix{T} where T}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:831
[45] eigvecs(A::UnitLowerTriangular{<:Union{Float32, Float64, ComplexF32, ComplexF64}, <:StridedMatrix{T} where T}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:840
[46] eigvecs(M::Bidiagonal{T, V} where V<:AbstractVector{T}) where T @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/bidiag.jl:908
[47] factorize(A::AbstractMatrix{T}) where T @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/dense.jl:1343
[48] givens(A::AbstractMatrix, i1::Integer, i2::Integer, j::Integer) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/givens.jl:315
[49] ishermitian(A::AbstractMatrix) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/generic.jl:1242
[50] issymmetric(A::AbstractMatrix) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/generic.jl:1203
[51] kron!(C::AbstractMatrix, A::Diagonal, B::Diagonal) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:592
[52] kron!(C::AbstractMatrix, A::Diagonal, B::AbstractMatrix) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:622
[53] kron!(C::AbstractMatrix, A::AbstractMatrix, B::Diagonal) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:645
[54] ldiv!(c::AbstractVecOrMat, A::Bidiagonal, b::AbstractVecOrMat) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/bidiag.jl:712
[55] ldiv!(Fadj::Adjoint{<:Any, <:Union{QR, LinearAlgebra.QRCompactWY, QRPivoted}}, B::AbstractVecOrMat) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/qr.jl:1005
[56] ldiv!(Fadj::Adjoint{<:Any, <:LQ}, B::AbstractVecOrMat) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/lq.jl:346
[57] ldiv!(adjA::Adjoint{<:Any, <:LU{T, Tridiagonal{T, V}}}, B::AbstractVecOrMat) where {T, V} @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/lu.jl:694
[58] ldiv!(transA::Transpose{<:Any, <:LU{T, Tridiagonal{T, V}}}, B::AbstractVecOrMat) where {T, V} @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/lu.jl:657
[59] ldiv!(A::QRPivoted{T, S, C} where {S<:AbstractMatrix{T}, C<:AbstractVector{T}}, B::AbstractMatrix{T}, rcond::Real) where T<:Union{Float32, Float64, ComplexF32, ComplexF64} @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/qr.jl:884
[60] ldiv!(A::QRPivoted, B::AbstractMatrix) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/qr.jl:991
[61] ldiv!(A::Bidiagonal, b::AbstractVecOrMat) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/bidiag.jl:711
[62] ldiv!(D::Diagonal{T, V} where V<:AbstractVector{T}, A::SparseArrays.AbstractSparseMatrixCSC{T}) where T @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:879
[63] ldiv!(xA::UnitUpperTriangular{<:Any, <:StridedMatrix{T} where T}, b::SparseArrays.AbstractCompressedVector) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2053
[64] ldiv!(xA::UnitUpperTriangular{<:Any, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2053
[65] ldiv!(xA::UnitUpperTriangular{<:Any, <:Transpose}, b::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1139
[66] ldiv!(xA::UnitUpperTriangular{<:Any, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2053
[67] ldiv!(xA::UnitUpperTriangular{<:Any, <:Adjoint}, b::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1139
[68] ldiv!(A::UnitUpperTriangular, b::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1061
[69] ldiv!(T::Tridiagonal, D::Diagonal, S::Union{SymTridiagonal, Tridiagonal}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:484
[70] ldiv!(C::SparseArrays.AbstractSparseMatrixCSC, D::Diagonal, A::SparseArrays.AbstractSparseMatrixCSC) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:1540
[71] ldiv!(xA::UnitLowerTriangular{<:Any, <:StridedMatrix{T} where T}, b::SparseArrays.AbstractCompressedVector) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2053
[72] ldiv!(xA::UnitLowerTriangular{<:Any, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2053
[73] ldiv!(xA::UnitLowerTriangular{<:Any, <:Transpose}, b::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1174
[74] ldiv!(xA::UnitLowerTriangular{<:Any, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2053
[75] ldiv!(xA::UnitLowerTriangular{<:Any, <:Adjoint}, b::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1174
[76] ldiv!(A::UnitLowerTriangular, b::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1090
[77] ldiv!(xA::LowerTriangular{<:Any, <:StridedMatrix{T} where T}, b::SparseArrays.AbstractCompressedVector) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2053
[78] ldiv!(xA::LowerTriangular{<:Any, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2053
[79] ldiv!(xA::LowerTriangular{<:Any, <:Transpose}, b::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1156
[80] ldiv!(xA::LowerTriangular{<:Any, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2053
[81] ldiv!(xA::LowerTriangular{<:Any, <:Adjoint}, b::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1156
[82] ldiv!(A::LowerTriangular, b::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1075
[83] ldiv!(B::AbstractVecOrMat, D::Diagonal, A::AbstractVecOrMat) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:439
[84] ldiv!(xA::UpperTriangular{<:Any, <:StridedMatrix{T} where T}, b::SparseArrays.AbstractCompressedVector) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2053
[85] ldiv!(xA::UpperTriangular{<:Any, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2053
[86] ldiv!(xA::UpperTriangular{<:Any, <:Transpose}, b::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1121
[87] ldiv!(xA::UpperTriangular{<:Any, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseArrays.AbstractCompressedVector) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:2053
[88] ldiv!(xA::UpperTriangular{<:Any, <:Adjoint}, b::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1121
[89] ldiv!(A::UpperTriangular, b::AbstractVector) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1046
[90] ldlt!(S::SymTridiagonal{T, V}) where {T, V} @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/ldlt.jl:117
[91] lmul!(Q::LinearAlgebra.HessenbergQ, B::AbstractVecOrMat) @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:327
[92] lmul!(adjQ::Adjoint{<:Any, <:SparseArrays.SPQR.QRSparseQ}, A::StridedVecOrMat) @ SparseArrays.SPQR ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/solvers/spqr.jl:260
[93] lmul!(adjH::Adjoint{<:Any, <:GenericLinearAlgebra.Householder}, A::StridedMatrix{T} where T) @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/householder.jl:52
[94] lmul!(adjA::Adjoint{<:Any, <:LinearAlgebra.QRPackedQ}, B::AbstractVecOrMat) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/qr.jl:697
[95] lmul!(adjQ::Adjoint{<:Any, <:LinearAlgebra.HessenbergQ}, B::AbstractVecOrMat) @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:352
[96] lmul!(Q::SparseArrays.SPQR.QRSparseQ, A::StridedVecOrMat) @ SparseArrays.SPQR ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/solvers/spqr.jl:231
[97] lmul!(D::Diagonal, A::SparseArrays.AbstractSparseMatrixCSC) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:1529
[98] lmul!(A::UnitUpperTriangular{T, Adjoint{T, S}}, B::StridedMatrix{T}, α::T) where {T<:Number, S} @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:182
[99] lmul!(A::UnitUpperTriangular, B::AbstractVecOrMat) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:916
[100] lmul!(A::UnitUpperTriangular{T, S}, B::StridedMatrix{T}, α::T) where {T<:Number, S} @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:117
[101] lmul!(A::LinearAlgebra.QRPackedQ, B::AbstractVecOrMat) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/qr.jl:630
[102] lmul!(A::UnitLowerTriangular{T, Adjoint{T, S}}, B::StridedMatrix{T}, α::T) where {T<:Number, S} @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:169
[103] lmul!(A::UnitLowerTriangular, B::AbstractVecOrMat) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:950
[104] lmul!(A::UnitLowerTriangular{T, S}, B::StridedMatrix{T}, α::T) where {T<:Number, S} @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:130
[105] lmul!(Q::GenericLinearAlgebra.EigenQ, B::StridedVecOrMat) @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/eigenSelfAdjoint.jl:39
[106] lmul!(A::LowerTriangular{T, Adjoint{T, S}}, B::StridedMatrix{T}, α::T) where {T<:Number, S} @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:143
[107] lmul!(A::LowerTriangular, B::AbstractVecOrMat) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:933
[108] lmul!(A::LowerTriangular{T, S}, B::StridedMatrix{T}, α::T) where {T<:Number, S} @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:104
[109] lmul!(A::UpperTriangular{T, Adjoint{T, S}}, B::StridedMatrix{T}, α::T) where {T<:Number, S} @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:156
[110] lmul!(A::UpperTriangular, B::AbstractVecOrMat) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:899
[111] lmul!(A::UpperTriangular{T, S}, B::StridedMatrix{T}, α::T) where {T<:Number, S} @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:91
[112] logabsdet(A::Union{LowerTriangular{T, S} where S<:AbstractMatrix{T}, UpperTriangular{T, S} where S<:AbstractMatrix{T}}) where T @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:2408
[113] mul!(C::StridedVecOrMat, xA::Adjoint{<:Any, <:SparseArrays.AbstractSparseMatrixCSC}, B::Union{Adjoint{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, LowerTriangular, Transpose{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedVector, StridedMatrix, BitVector, BitMatrix}, α::Number, β::Number) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:56
[114] mul!(C::StridedVecOrMat, xA::Transpose{<:Any, <:SparseArrays.AbstractSparseMatrixCSC}, B::Union{Adjoint{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, LowerTriangular, Transpose{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedVector, StridedMatrix, BitVector, BitMatrix}, α::Number, β::Number) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:56
[115] mul!(C::StridedVecOrMat, X::Union{Adjoint{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, LowerTriangular, Transpose{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}, xA::Adjoint{<:Any, <:SparseArrays.AbstractSparseMatrixCSC}, α::Number, β::Number) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:118
[116] mul!(C::StridedVecOrMat, X::Union{Adjoint{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, LowerTriangular, Transpose{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}, xA::Transpose{<:Any, <:SparseArrays.AbstractSparseMatrixCSC}, α::Number, β::Number) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:118
[117] mul!(y::AbstractVector, A::Union{LowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitLowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitUpperTriangular{T, S} where S<:AbstractMatrix{T}, UpperTriangular{T, S} where S<:AbstractMatrix{T}, StridedArray{T, 2}} where T, x::AbstractSparseVector, α::Number, β::Number) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:1752
[118] mul!(y::AbstractVector, tA::Transpose{<:Any, <:Union{LowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitLowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitUpperTriangular{T, S} where S<:AbstractMatrix{T}, UpperTriangular{T, S} where S<:AbstractMatrix{T}, StridedArray{T, 2}} where T}, x::AbstractSparseVector, α::Number, β::Number) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:1788
[119] mul!(out::AbstractMatrix{T}, a::Number, B::UniformScaling, α::Number, β::Number) where T @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:287
[120] mul!(y::AbstractVector, adjA::Adjoint{<:Any, <:Union{LowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitLowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitUpperTriangular{T, S} where S<:AbstractMatrix{T}, UpperTriangular{T, S} where S<:AbstractMatrix{T}, StridedArray{T, 2}} where T}, x::AbstractSparseVector, α::Number, β::Number) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:1826
[121] mul!(C::SparseArrays.AbstractSparseMatrixCSC, A::SparseArrays.AbstractSparseMatrixCSC, D::Diagonal) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:1464
[122] mul!(C::SparseArrays.AbstractSparseMatrixCSC, D::Diagonal, A::SparseArrays.AbstractSparseMatrixCSC) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:1478
[123] pinv(D::Diagonal{T, V} where V<:AbstractVector{T}) where T @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:715
[124] pinv(D::Diagonal{T, V} where V<:AbstractVector{T}, tol::Real) where T @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:730
[125] rdiv!(A::AbstractMatrix, B::Bidiagonal) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/bidiag.jl:839
[126] rdiv!(A::SparseArrays.AbstractSparseMatrixCSC{T}, D::Diagonal{T, V} where V<:AbstractVector{T}) where T @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:861
[127] rdiv!(A::AbstractMatrix, B::LowerTriangular) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1228
[128] rdiv!(A::AbstractMatrix, B::UnitLowerTriangular) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1246
[129] rdiv!(A::AbstractMatrix, B::UpperTriangular) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1193
[130] rdiv!(A::AbstractMatrix, B::UnitUpperTriangular) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1211
[131] rmul!(A::StridedMatrix{T} where T, Q::LinearAlgebra.QRPackedQ) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/qr.jl:750
[132] rmul!(A::StridedMatrix{T} where T, adjQ::Adjoint{<:Any, <:LinearAlgebra.QRPackedQ}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/qr.jl:797
[133] rmul!(A::StridedMatrix{T} where T, Q::SparseArrays.SPQR.QRSparseQ) @ SparseArrays.SPQR ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/solvers/spqr.jl:246
[134] rmul!(A::StridedMatrix{T} where T, adjQ::Adjoint{<:Any, <:SparseArrays.SPQR.QRSparseQ}) @ SparseArrays.SPQR ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/solvers/spqr.jl:276
[135] rmul!(A::StridedMatrix{T} where T, Q::GenericLinearAlgebra.EigenQ) @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/eigenSelfAdjoint.jl:80
[136] rmul!(A::AbstractMatrix, G::LinearAlgebra.Givens) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/givens.jl:365
[137] rmul!(A::AbstractMatrix, R::LinearAlgebra.Rotation) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/givens.jl:394
[138] rmul!(A::AbstractMatrix, adjR::LinearAlgebra.AdjointRotation{<:Any, <:LinearAlgebra.Rotation}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/givens.jl:408
[139] rmul!(A::AbstractMatrix, Q::LinearAlgebra.LQPackedQ) @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:428
[140] rmul!(A::SparseArrays.AbstractSparseMatrixCSC, D::Diagonal) @ SparseArrays ~/dev/juliadev/usr/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:1519
[141] rmul!(A::AbstractMatrix, Q::LinearAlgebra.HessenbergQ) @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:378
[142] rmul!(A::AbstractMatrix, adjQ::Adjoint{<:Any, <:LinearAlgebra.HessenbergQ}) @ GenericLinearAlgebra ~/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:403
[143] rmul!(A::AbstractMatrix, B::LowerTriangular) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1003
[144] rmul!(A::AbstractMatrix, B::UnitLowerTriangular) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:1020
[145] rmul!(A::AbstractMatrix, B::UpperTriangular) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:968
[146] rmul!(A::AbstractMatrix, B::UnitUpperTriangular) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:985
[147] schur(A::Union{LowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitLowerTriangular{T, S} where S<:AbstractMatrix{T}}) where T @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/schur.jl:168
[148] schur(A::Bidiagonal{T, V} where V<:AbstractVector{T}) where T @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/schur.jl:181
[149] svd(D::Diagonal{T, V} where V<:AbstractVector{T}) where T<:Number @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:799
[150] svdvals!(A::Union{Hermitian{T, S}, Hermitian{Complex{T}, S}, Symmetric{T, S}} where {T<:Real, S}) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetric.jl:667
[151] tril!(A::UnitUpperTriangular{T, S} where S<:AbstractMatrix{T}, k::Integer) where T @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:321
[152] tril!(A::UnitLowerTriangular, k::Integer) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:383
[153] tril!(A::UpperTriangular, k::Integer) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:305
[154] tril!(M::AbstractMatrix, k::Integer) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/dense.jl:172
[155] triu!(A::UnitUpperTriangular, k::Integer) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:340
[156] triu!(A::UnitLowerTriangular{T, S} where S<:AbstractMatrix{T}, k::Integer) where T @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:364
[157] triu!(A::LowerTriangular, k::Integer) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:347
[158] triu!(M::AbstractMatrix, k::Integer) @ LinearAlgebra ~/dev/juliadev/usr/share/julia/stdlib/v1.10/LinearAlgebra/src/dense.jl:134
```
