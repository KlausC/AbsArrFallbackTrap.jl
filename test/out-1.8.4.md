# output 1.8.4

```jldoctest
julia> methods_with_getset(Union{StridedArray,AbstractSparseArray} => AbstractMatrix, LinearAlgebra)
[1] /(A::UnitUpperTriangular, x::Number) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:873
[2] /(A::UnitLowerTriangular, x::Number) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:873
[3] \(xA::UnitUpperTriangular{<:TA, <:StridedMatrix{T} where T}, b::SparseVector{Tb}) where {TA<:Number, Tb<:Number} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1892
[4] \(xA::UnitUpperTriangular{<:TA, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector{Tb}) where {TA<:Number, Tb<:Number} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1892
[5] \(xA::UnitUpperTriangular{<:TA, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector{Tb}) where {TA<:Number, Tb<:Number} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1892
[6] \(xA::UnitLowerTriangular{<:TA, <:StridedMatrix{T} where T}, b::SparseVector{Tb}) where {TA<:Number, Tb<:Number} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1892
[7] \(xA::UnitLowerTriangular{<:TA, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector{Tb}) where {TA<:Number, Tb<:Number} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1892
[8] \(xA::UnitLowerTriangular{<:TA, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector{Tb}) where {TA<:Number, Tb<:Number} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1892
[9] \(xA::UpperTriangular{<:TA, <:StridedMatrix{T} where T}, b::SparseVector{Tb}) where {TA<:Number, Tb<:Number} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1892
[10] \(xA::UpperTriangular{<:TA, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector{Tb}) where {TA<:Number, Tb<:Number} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1892
[11] \(xA::UpperTriangular{<:TA, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector{Tb}) where {TA<:Number, Tb<:Number} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1892
[12] \(x::Number, A::UnitUpperTriangular) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:884
[13] \(x::Number, A::UnitLowerTriangular) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:884
[14] \(xA::LowerTriangular{<:TA, <:StridedMatrix{T} where T}, b::SparseVector{Tb}) where {TA<:Number, Tb<:Number} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1892
[15] \(xA::LowerTriangular{<:TA, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector{Tb}) where {TA<:Number, Tb<:Number} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1892
[16] \(xA::LowerTriangular{<:TA, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector{Tb}) where {TA<:Number, Tb<:Number} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1892
[17] copyto!(A::AbstractMatrix, J::UniformScaling) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:374
[18] copyto!(dest::AbstractMatrix, Rdest::CartesianIndices{2, R} where R<:Tuple{OrdinalRange{Int64, Int64}, OrdinalRange{Int64, Int64}}, src::SparseArrays.AbstractSparseMatrixCSC{T}, Rsrc::CartesianIndices{2, R} where R<:Tuple{OrdinalRange{Int64, Int64}, OrdinalRange{Int64, Int64}}) where T in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:481
[19] copyto!(dest::SymTridiagonal, bc::Base.Broadcast.Broadcasted{<:LinearAlgebra.StructuredMatrixStyle}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/structuredbroadcast.jl:183
[20] copyto!(dest::Diagonal, bc::Base.Broadcast.Broadcasted{<:LinearAlgebra.StructuredMatrixStyle}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/structuredbroadcast.jl:154
[21] copyto!(dest::Bidiagonal, bc::Base.Broadcast.Broadcasted{<:LinearAlgebra.StructuredMatrixStyle}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/structuredbroadcast.jl:164
[22] copyto!(dest::UpperTriangular, bc::Base.Broadcast.Broadcasted{<:LinearAlgebra.StructuredMatrixStyle}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/structuredbroadcast.jl:224
[23] copyto!(dest::LowerTriangular, bc::Base.Broadcast.Broadcasted{<:LinearAlgebra.StructuredMatrixStyle}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/structuredbroadcast.jl:212
[24] copyto!(dest::Tridiagonal, bc::Base.Broadcast.Broadcasted{<:LinearAlgebra.StructuredMatrixStyle}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/structuredbroadcast.jl:198
[25] diag(A::AbstractMatrix, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:249
[26] dot(A::Symmetric, B::Symmetric) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:422
[27] dot(x::AbstractVector, A::Union{Hermitian{T, S}, Hermitian{Complex{T}, S}, Symmetric{T, S}} where {T<:Real, S}, y::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:578
[28] dot(x::AbstractVector, B::Bidiagonal, y::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:701
[29] dot(x::AbstractVector, A::UpperTriangular, y::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:548
[30] dot(x::AbstractVector, A::LowerTriangular, y::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:591
[31] dot(x::AbstractVector, S::SymTridiagonal, y::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:256
[32] dot(x::AbstractVector, A::Tridiagonal, y::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:843
[33] dot(x::AbstractVector, A::UnitUpperTriangular, y::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:569
[34] dot(x::AbstractVector, A::UnitLowerTriangular, y::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:611
[35] dot(A::Hermitian, B::Hermitian) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:422
[36] dot(x::AbstractVector, H::UpperHessenberg, y::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:367
[37] dot(x::AbstractVector, A::AbstractMatrix, y::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:918
[38] eigmax(A::SymTridiagonal) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:313
[39] eigmax(A::Union{Hermitian{var"#s886", var"#s885"}, Hermitian{Complex{var"#s886"}, var"#s885"}, Symmetric{var"#s886", var"#s885"}} where {var"#s886"<:Real, var"#s885"<:(StridedMatrix{T} where T)}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetriceigen.jl:158
[40] eigmin(A::SymTridiagonal) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:314
[41] eigmin(A::Union{Hermitian{var"#s886", var"#s885"}, Hermitian{Complex{var"#s886"}, var"#s885"}, Symmetric{var"#s886", var"#s885"}} where {var"#s886"<:Real, var"#s885"<:(StridedMatrix{T} where T)}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetriceigen.jl:159
[42] eigvals!(A::Union{Hermitian{var"#s886", var"#s885"}, Hermitian{Complex{var"#s886"}, var"#s885"}, Symmetric{var"#s886", var"#s885"}} where {var"#s886"<:Union{Float32, Float64}, var"#s885"<:(StridedMatrix{T} where T)}, irange::UnitRange) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetriceigen.jl:83
[43] eigvals!(A::Union{Hermitian{T, var"#s886"}, Hermitian{Complex{T}, var"#s886"}, Symmetric{T, var"#s886"}} where var"#s886"<:(StridedMatrix{T} where T), vl::Real, vh::Real) where T<:Union{Float32, Float64} in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetriceigen.jl:124
[44] eigvecs(A::UnitUpperTriangular{<:Union{Float32, Float64, ComplexF32, ComplexF64}, <:StridedMatrix{T} where T}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:828
[45] eigvecs(A::UnitLowerTriangular{<:Union{Float32, Float64, ComplexF32, ComplexF64}, <:StridedMatrix{T} where T}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:837
[46] eigvecs(M::Bidiagonal{T, V} where V<:AbstractVector{T}) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:937
[47] givens(A::AbstractMatrix, i1::Integer, i2::Integer, j::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:313
[48] ishermitian(A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1240
[49] issymmetric(A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1201
[50] ldiv!(c::AbstractVecOrMat, A::Bidiagonal, b::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:735
[51] ldiv!(D::Diagonal{T, V} where V<:AbstractVector{T}, A::SparseArrays.AbstractSparseMatrixCSC{T}) where T in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:879
[52] ldiv!(adjA::Adjoint{<:Any, <:LU{T, Tridiagonal{T, V}}}, B::AbstractVecOrMat) where {T, V} in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/lu.jl:667
[53] ldiv!(xA::UnitLowerTriangular{<:Any, <:StridedMatrix{T} where T}, b::SparseVector) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1919
[54] ldiv!(xA::UnitLowerTriangular{<:Any, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1919
[55] ldiv!(xA::UnitLowerTriangular{<:Any, <:Transpose}, b::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1320
[56] ldiv!(xA::UnitLowerTriangular{<:Any, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1919
[57] ldiv!(xA::UnitLowerTriangular{<:Any, <:Adjoint}, b::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1320
[58] ldiv!(A::UnitLowerTriangular, b::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1236
[59] ldiv!(A::Bidiagonal, b::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:734
[60] ldiv!(T::Tridiagonal, D::Diagonal, S::Union{SymTridiagonal, Tridiagonal}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:471
[61] ldiv!(xA::UnitUpperTriangular{<:Any, <:StridedMatrix{T} where T}, b::SparseVector) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1919
[62] ldiv!(xA::UnitUpperTriangular{<:Any, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1919
[63] ldiv!(xA::UnitUpperTriangular{<:Any, <:Transpose}, b::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1285
[64] ldiv!(xA::UnitUpperTriangular{<:Any, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1919
[65] ldiv!(xA::UnitUpperTriangular{<:Any, <:Adjoint}, b::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1285
[66] ldiv!(A::UnitUpperTriangular, b::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1207
[67] ldiv!(transA::Transpose{<:Any, <:LU{T, Tridiagonal{T, V}}}, B::AbstractVecOrMat) where {T, V} in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/lu.jl:630
[68] ldiv!(xA::UpperTriangular{<:Any, <:StridedMatrix{T} where T}, b::SparseVector) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1919
[69] ldiv!(xA::UpperTriangular{<:Any, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1919
[70] ldiv!(xA::UpperTriangular{<:Any, <:Transpose}, b::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1267
[71] ldiv!(xA::UpperTriangular{<:Any, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1919
[72] ldiv!(xA::UpperTriangular{<:Any, <:Adjoint}, b::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1267
[73] ldiv!(A::UpperTriangular, b::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1192
[74] ldiv!(xA::LowerTriangular{<:Any, <:StridedMatrix{T} where T}, b::SparseVector) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1919
[75] ldiv!(xA::LowerTriangular{<:Any, <:Transpose{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1919
[76] ldiv!(xA::LowerTriangular{<:Any, <:Transpose}, b::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1302
[77] ldiv!(xA::LowerTriangular{<:Any, <:Adjoint{<:Any, <:StridedMatrix{T} where T}}, b::SparseVector) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1919
[78] ldiv!(xA::LowerTriangular{<:Any, <:Adjoint}, b::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1302
[79] ldiv!(A::LowerTriangular, b::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1221
[80] ldiv!(C::SparseArrays.AbstractSparseMatrixCSC, D::Diagonal, A::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:1535
[81] ldiv!(B::AbstractVecOrMat, D::Diagonal, A::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:426
[82] ldlt!(S::SymTridiagonal{T, V}) where {T, V} in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/ldlt.jl:117
[83] lmul!(Q::GenericLinearAlgebra.EigenQ, B::StridedVecOrMat) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/eigenSelfAdjoint.jl:39
[84] lmul!(Q::SuiteSparse.SPQR.QRSparseQ, A::StridedVecOrMat) in SuiteSparse.SPQR at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SuiteSparse/src/spqr.jl:225
[85] lmul!(Q::LinearAlgebra.HessenbergQ, B::AbstractVecOrMat) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:327
[86] lmul!(D::Diagonal, A::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:1524
[87] lmul!(A::UnitUpperTriangular{T, Adjoint{T, S}}, B::StridedMatrix{T}, α::T) where {T<:Number, S} in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:182
[88] lmul!(xA::UnitUpperTriangular{<:Any, <:Adjoint}, B::StridedVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:984
[89] lmul!(xA::UnitUpperTriangular{<:Any, <:Transpose}, B::StridedVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:984
[90] lmul!(A::UnitUpperTriangular, B::StridedVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:913
[91] lmul!(A::UnitUpperTriangular{T, S}, B::StridedMatrix{T}, α::T) where {T<:Number, S} in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:117
[92] lmul!(adjQ::Adjoint{<:Any, <:SuiteSparse.SPQR.QRSparseQ}, A::StridedVecOrMat) in SuiteSparse.SPQR at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SuiteSparse/src/spqr.jl:254
[93] lmul!(adjH::Adjoint{<:Any, <:GenericLinearAlgebra.Householder}, A::StridedMatrix{T} where T) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/householder.jl:52
[94] lmul!(adjA::Adjoint{<:Any, <:LinearAlgebra.QRPackedQ}, B::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/qr.jl:696
[95] lmul!(adjQ::Adjoint{<:Any, <:LinearAlgebra.HessenbergQ}, B::AbstractVecOrMat) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:352
[96] lmul!(A::UnitLowerTriangular{T, Adjoint{T, S}}, B::StridedMatrix{T}, α::T) where {T<:Number, S} in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:169
[97] lmul!(xA::UnitLowerTriangular{<:Any, <:Adjoint}, B::StridedVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1021
[98] lmul!(xA::UnitLowerTriangular{<:Any, <:Transpose}, B::StridedVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1021
[99] lmul!(A::UnitLowerTriangular, B::StridedVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:946
[100] lmul!(A::UnitLowerTriangular{T, S}, B::StridedMatrix{T}, α::T) where {T<:Number, S} in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:130
[101] lmul!(A::UpperTriangular{T, Adjoint{T, S}}, B::StridedMatrix{T}, α::T) where {T<:Number, S} in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:156
[102] lmul!(xA::UpperTriangular{<:Any, <:Adjoint}, B::StridedVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:965
[103] lmul!(xA::UpperTriangular{<:Any, <:Transpose}, B::StridedVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:965
[104] lmul!(A::UpperTriangular, B::StridedVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:896
[105] lmul!(A::UpperTriangular{T, S}, B::StridedMatrix{T}, α::T) where {T<:Number, S} in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:91
[106] lmul!(R::LinearAlgebra.Rotation, A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:383
[107] lmul!(A::LowerTriangular{T, Adjoint{T, S}}, B::StridedMatrix{T}, α::T) where {T<:Number, S} in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:143
[108] lmul!(xA::LowerTriangular{<:Any, <:Adjoint}, B::StridedVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1003
[109] lmul!(xA::LowerTriangular{<:Any, <:Transpose}, B::StridedVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1003
[110] lmul!(A::LowerTriangular, B::StridedVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:930
[111] lmul!(A::LowerTriangular{T, S}, B::StridedMatrix{T}, α::T) where {T<:Number, S} in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/juliaBLAS.jl:104
[112] lmul!(A::LinearAlgebra.QRPackedQ, B::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/qr.jl:629
[113] logabsdet(A::Union{LowerTriangular{T, S} where S<:AbstractMatrix{T}, UpperTriangular{T, S} where S<:AbstractMatrix{T}}) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:2639
[114] mul!(C::StridedVecOrMat, xA::Adjoint{<:Any, <:SparseArrays.AbstractSparseMatrixCSC}, B::Union{Adjoint{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, LowerTriangular, Transpose{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, StridedVector, BitMatrix, BitVector}, α::Number, β::Number) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:56
[115] mul!(C::StridedVecOrMat, xA::Transpose{<:Any, <:SparseArrays.AbstractSparseMatrixCSC}, B::Union{Adjoint{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, LowerTriangular, Transpose{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, StridedVector, BitMatrix, BitVector}, α::Number, β::Number) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:56
[116] mul!(C::StridedVecOrMat, X::Union{Adjoint{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, LowerTriangular, Transpose{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}, xA::Adjoint{<:Any, <:SparseArrays.AbstractSparseMatrixCSC}, α::Number, β::Number) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:118
[117] mul!(C::StridedVecOrMat, X::Union{Adjoint{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, LowerTriangular, Transpose{<:Any, <:Union{LowerTriangular, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}}, UnitLowerTriangular, UnitUpperTriangular, UpperTriangular, StridedMatrix, BitMatrix}, xA::Transpose{<:Any, <:SparseArrays.AbstractSparseMatrixCSC}, α::Number, β::Number) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:118
[118] mul!(y::AbstractVector, A::Union{LowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitLowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitUpperTriangular{T, S} where S<:AbstractMatrix{T}, UpperTriangular{T, S} where S<:AbstractMatrix{T}, StridedArray{T, 2}} where T, x::AbstractSparseVector, α::Number, β::Number) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1616
[119] mul!(out::AbstractMatrix{T}, a::Number, B::UniformScaling, α::Number, β::Number) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:287
[120] mul!(y::AbstractVector, adjA::Adjoint{<:Any, <:Union{LowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitLowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitUpperTriangular{T, S} where S<:AbstractMatrix{T}, UpperTriangular{T, S} where S<:AbstractMatrix{T}, StridedArray{T, 2}} where T}, x::AbstractSparseVector, α::Number, β::Number) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1690
[121] mul!(y::AbstractVector, tA::Transpose{<:Any, <:Union{LowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitLowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitUpperTriangular{T, S} where S<:AbstractMatrix{T}, UpperTriangular{T, S} where S<:AbstractMatrix{T}, StridedArray{T, 2}} where T}, x::AbstractSparseVector, α::Number, β::Number) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1652
[122] mul!(C::SparseArrays.AbstractSparseMatrixCSC, A::SparseArrays.AbstractSparseMatrixCSC, D::Diagonal) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:1459
[123] mul!(C::SparseArrays.AbstractSparseMatrixCSC, D::Diagonal, A::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:1473
[124] pinv(D::Diagonal{T, V} where V<:AbstractVector{T}) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:688
[125] pinv(D::Diagonal{T, V} where V<:AbstractVector{T}, tol::Real) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:695
[126] rdiv!(A::StridedMatrix{T} where T, xB::LowerTriangular{<:Any, <:Adjoint}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1407
[127] rdiv!(A::StridedMatrix{T} where T, xB::UnitLowerTriangular{<:Any, <:Adjoint}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1424
[128] rdiv!(A::StridedMatrix{T} where T, xB::UpperTriangular{<:Any, <:Adjoint}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1442
[129] rdiv!(A::StridedMatrix{T} where T, xB::UnitUpperTriangular{<:Any, <:Adjoint}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1459
[130] rdiv!(A::StridedMatrix{T} where T, xB::LowerTriangular{<:Any, <:Transpose}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1407
[131] rdiv!(A::StridedMatrix{T} where T, B::LowerTriangular) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1372
[132] rdiv!(A::StridedMatrix{T} where T, xB::UnitLowerTriangular{<:Any, <:Transpose}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1424
[133] rdiv!(A::StridedMatrix{T} where T, B::UnitLowerTriangular) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1388
[134] rdiv!(A::StridedMatrix{T} where T, xB::UpperTriangular{<:Any, <:Transpose}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1442
[135] rdiv!(A::StridedMatrix{T} where T, B::UpperTriangular) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1339
[136] rdiv!(A::StridedMatrix{T} where T, xB::UnitUpperTriangular{<:Any, <:Transpose}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1459
[137] rdiv!(A::StridedMatrix{T} where T, B::UnitUpperTriangular) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1355
[138] rdiv!(A::AbstractMatrix, B::Bidiagonal) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:864
[139] rdiv!(A::SparseArrays.AbstractSparseMatrixCSC{T}, D::Diagonal{T, V} where V<:AbstractVector{T}) where T in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:861
[140] rmul!(A::StridedMatrix{T} where T, B::UpperTriangular{<:Any, <:Adjoint}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1110
[141] rmul!(A::StridedMatrix{T} where T, B::UnitUpperTriangular{<:Any, <:Adjoint}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1128
[142] rmul!(A::StridedMatrix{T} where T, B::LowerTriangular{<:Any, <:Adjoint}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1146
[143] rmul!(A::StridedMatrix{T} where T, B::UnitLowerTriangular{<:Any, <:Adjoint}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1164
[144] rmul!(A::StridedMatrix{T} where T, B::UpperTriangular{<:Any, <:Transpose}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1110
[145] rmul!(A::StridedMatrix{T} where T, B::UpperTriangular) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1042
[146] rmul!(A::StridedMatrix{T} where T, B::UnitUpperTriangular{<:Any, <:Transpose}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1128
[147] rmul!(A::StridedMatrix{T} where T, B::UnitUpperTriangular) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1058
[148] rmul!(A::StridedMatrix{T} where T, B::LowerTriangular{<:Any, <:Transpose}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1146
[149] rmul!(A::StridedMatrix{T} where T, B::LowerTriangular) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1075
[150] rmul!(A::StridedMatrix{T} where T, B::UnitLowerTriangular{<:Any, <:Transpose}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1164
[151] rmul!(A::StridedMatrix{T} where T, B::UnitLowerTriangular) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:1091
[152] rmul!(A::StridedMatrix{T} where T, Q::LinearAlgebra.QRPackedQ) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/qr.jl:749
[153] rmul!(A::StridedMatrix{T} where T, adjQ::Adjoint{<:Any, <:LinearAlgebra.QRPackedQ}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/qr.jl:796
[154] rmul!(A::StridedMatrix{T} where T, Q::SuiteSparse.SPQR.QRSparseQ) in SuiteSparse.SPQR at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SuiteSparse/src/spqr.jl:240
[155] rmul!(A::StridedMatrix{T} where T, adjQ::Adjoint{<:Any, <:SuiteSparse.SPQR.QRSparseQ}) in SuiteSparse.SPQR at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SuiteSparse/src/spqr.jl:270
[156] rmul!(A::StridedMatrix{T} where T, Q::GenericLinearAlgebra.EigenQ) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/eigenSelfAdjoint.jl:80
[157] rmul!(A::AbstractMatrix, G::LinearAlgebra.Givens) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:365
[158] rmul!(A::AbstractMatrix, adjR::Adjoint{<:Any, <:LinearAlgebra.Rotation}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:389
[159] rmul!(A::AbstractMatrix, Q::LinearAlgebra.LQPackedQ) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:428
[160] rmul!(A::AbstractMatrix, Q::LinearAlgebra.HessenbergQ) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:378
[161] rmul!(A::AbstractMatrix, adjQ::Adjoint{<:Any, <:LinearAlgebra.HessenbergQ}) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:403
[162] rmul!(A::SparseArrays.AbstractSparseMatrixCSC, D::Diagonal) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:1514
[163] schur(A::Union{LowerTriangular{T, S} where S<:AbstractMatrix{T}, UnitLowerTriangular{T, S} where S<:AbstractMatrix{T}}) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/schur.jl:165
[164] schur(A::Bidiagonal{T, V} where V<:AbstractVector{T}) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/schur.jl:178
[165] svd(D::Diagonal{T, V} where V<:AbstractVector{T}) where T<:Number in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:735
[166] svdvals!(A::Union{Hermitian{T, S}, Hermitian{Complex{T}, S}, Symmetric{T, S}} where {T<:Real, S}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:665
[167] tril!(A::UpperTriangular, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:301
[168] tril!(A::UnitUpperTriangular{T, S} where S<:AbstractMatrix{T}, k::Integer) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:317
[169] tril!(A::UnitLowerTriangular, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:379
[170] tril!(M::AbstractMatrix, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:172
[171] triu!(A::LowerTriangular, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:343
[172] triu!(A::UnitUpperTriangular, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:336
[173] triu!(A::UnitLowerTriangular{T, S} where S<:AbstractMatrix{T}, k::Integer) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:360
[174] triu!(M::AbstractMatrix, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:134
```
