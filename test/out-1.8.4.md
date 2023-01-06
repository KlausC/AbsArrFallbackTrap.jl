# output 1.8.4

```raw
julia> m = methodswith(AbstractMatrix; supertypes=true);

julia> f(m) = try callsnames(m, [:getindex, :setindex!]); catch; @warn "error $m"; false; end
f (generic function with 1 method)

julia> code_typed(me; debuginfo=:source)^C

julia> sel = filter(f, m)
┌ Warning: error copyto!(dest::AbstractArray{T1, N}, Rdest::CartesianIndices{N, R} where R<:Tuple{Vararg{OrdinalRange{Int64, Int64}, N}}, src::AbstractArray{T2, N}, Rsrc::CartesianIndices{N, R} where R<:Tuple{Vararg{OrdinalRange{Int64, Int64}, N}}) where {T1, T2, N} in Base at multidimensional.jl:1105
└ @ Main REPL[155]:1
┌ Warning: error isassigned(a::AbstractArray, i::Integer...) in Base at abstractarray.jl:563
└ @ Main REPL[155]:1
┌ Warning: error permutedims!(dest, src::AbstractArray, perm) in Base.PermutedDimsArrays at permuteddimsarray.jl:204
└ @ Main REPL[155]:1
[1] +(A::AbstractMatrix, J::UniformScaling) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:214
[2] -(J::UniformScaling, A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:223
[3] ^(A::AbstractMatrix{T}, p::Real) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:497
[4] axes(A::AbstractArray{T, N}, d) where {T, N} in Base at abstractarray.jl:72
[5] checkbounds(::Type{Bool}, A::AbstractArray, I::Base.LogicalIndex{<:Any, <:AbstractVector{Bool}}) in Base at multidimensional.jl:823
[6] clamp!(x::AbstractArray, lo, hi) in Base.Math at math.jl:139
[7] copyto!(B::AbstractVecOrMat{R}, ir_dest::AbstractRange{Int64}, jr_dest::AbstractRange{Int64}, A::AbstractVecOrMat{S}, ir_src::AbstractRange{Int64}, jr_src::AbstractRange{Int64}) where {R, S} in Base at abstractarray.jl:1098
[8] copyto!(A::AbstractMatrix, J::UniformScaling) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:374
[9] copyto!(dest::AbstractMatrix, Rdest::CartesianIndices{2, R} where R<:Tuple{OrdinalRange{Int64, Int64}, OrdinalRange{Int64, Int64}}, src::SparseArrays.AbstractSparseMatrixCSC{T}, Rsrc::CartesianIndices{2, R} where R<:Tuple{OrdinalRange{Int64, Int64}, OrdinalRange{Int64, Int64}}) where T in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:481
[10] copyto!(dest::AbstractArray, bc::Base.Broadcast.Broadcasted{Nothing}) in Base.Broadcast at broadcast.jl:948
[11] copyto!(dest::AbstractArray, bc::Base.Broadcast.Broadcasted{<:Base.Broadcast.AbstractArrayStyle{0}}) in Base.Broadcast at broadcast.jl:916
[12] copyto!(dest::AbstractArray, dstart::Integer, src::AbstractArray, sstart::Integer, n::Integer) in Base at abstractarray.jl:1077
[13] copyto!(dest::AbstractArray, dstart::Integer, src) in Base at abstractarray.jl:910
[14] copyto!(dest::AbstractArray, dstart::Integer, src, sstart::Integer) in Base at abstractarray.jl:920
[15] copyto!(dest::AbstractArray, dstart::Integer, src, sstart::Integer, n::Integer) in Base at abstractarray.jl:949
[16] copyto!(dest::AbstractArray, src) in Base at abstractarray.jl:898
[17] fill!(A::AbstractArray{T}, x) where T in Base at multidimensional.jl:1097
[18] filter(f, a::AbstractArray) in Base at array.jl:2546
[19] first(a::AbstractArray) in Base at abstractarray.jl:404
[20] get(f::Union{Function, Type}, A::AbstractArray, i::Integer) in Base at abstractarray.jl:1498
[21] get(f::Union{Function, Type}, A::AbstractArray, I::Tuple{}) in Base at abstractarray.jl:1499
[22] get(A::AbstractArray, i::Integer, default) in Base at abstractarray.jl:1495
[23] get(A::AbstractArray, I::Tuple{}, default) in Base at abstractarray.jl:1496
[24] get!(X::AbstractArray{T}, A::AbstractArray, I::Union{AbstractVector{Int64}, AbstractRange}, default::T) where T in Base at abstractarray.jl:1511
[25] getindex(A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}, I::AbstractArray) where {Tv, Ti} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:2616
[26] getindex(x::AbstractSparseVector{Tv, Ti}, I::AbstractArray) where {Tv, Ti} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:875
[27] getindex(v::Core.SimpleVector, I::AbstractArray) in Base at essentials.jl:637
[28] hash(A::AbstractArray, h::UInt64) in Base at abstractarray.jl:3067
[29] indexin(a, b::AbstractArray) in Base at array.jl:2407
[30] iterate(A::AbstractArray, state) in Base at abstractarray.jl:1164
[31] kron!(C::AbstractMatrix, A::Diagonal, B::Diagonal) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:579
[32] kron!(C::AbstractMatrix, A::Diagonal, B::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:595
[33] kron!(C::AbstractMatrix, A::AbstractMatrix, B::Diagonal) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:618
[34] kron!(C::AbstractMatrix, A::AbstractMatrix, B::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:366
[35] map!(f::F, dest::AbstractArray, A::AbstractArray) where F in Base at abstractarray.jl:2924
[36] map!(f::F, dest::AbstractArray, A::AbstractArray, B::AbstractArray) where F in Base at abstractarray.jl:2967
[37] read!(s::IO, a::AbstractArray{T}) where T in Base at io.jl:775
[38] reinterpret(::Type{T}, a::A) where {T, N, S, A<:AbstractArray{S, N}} in Base at reinterpretarray.jl:28
[39] rot180(A::AbstractMatrix) in Base at arraymath.jl:176
[40] rotl90(A::AbstractMatrix) in Base at arraymath.jl:121
[41] rotr90(A::AbstractMatrix) in Base at arraymath.jl:149
[42] setindex!(A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}, V::AbstractVecOrMat, Ix::Union{Colon, Integer, AbstractVector{<:Integer}}, Jx::Union{Colon, Integer, AbstractVector{<:Integer}}) where {Tv, Ti<:Integer} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:2895
[43] setindex!(A::SparseArrays.AbstractSparseMatrixCSC, x::AbstractArray, I::AbstractMatrix{Bool}) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:3023
[44] setindex!(A::SparseArrays.AbstractSparseMatrixCSC, x::AbstractArray, Ix::AbstractVector{<:Integer}) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:3124
[45] setindex!(A::Array, X::AbstractArray, I::AbstractVector{Int64}) in Base at array.jl:971
[46] show(io::IO, ::MIME{Symbol("text/plain")}, X::AbstractArray) in Base at arrayshow.jl:363
[47] size(t::AbstractArray{T, N}, d) where {T, N} in Base at abstractarray.jl:42
[48] stride(A::AbstractArray, k::Integer) in Base at abstractarray.jl:546
[49] tanh(A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:1076
[50] axpby!(α, x::AbstractArray, β, y::AbstractArray) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1431
[51] axpy!(α, x::AbstractArray, rx::AbstractArray{<:Integer}, y::AbstractArray, ry::AbstractArray{<:Integer}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1417
[52] axpy!(α, x::AbstractArray, y::AbstractArray) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1406
[53] copy_transpose!(B::AbstractVecOrMat, ir_dest::AbstractRange{Int64}, jr_dest::AbstractRange{Int64}, A::AbstractVecOrMat, ir_src::AbstractRange{Int64}, jr_src::AbstractRange{Int64}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/transpose.jl:181
[54] diag(A::AbstractMatrix, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:249
[55] dot(x::AbstractVector, A::AbstractMatrix, y::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:918
[56] dot(x::AbstractArray, y::AbstractArray) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:873
[57] givens(A::AbstractMatrix, i1::Integer, i2::Integer, j::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:313
[58] ishermitian(A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1240
[59] issymmetric(A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1201
[60] ldiv!(c::AbstractVecOrMat, A::Bidiagonal, b::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:735
[61] ldiv!(adjA::Adjoint{<:Any, <:LU{T, Tridiagonal{T, V}}}, B::AbstractVecOrMat) where {T, V} in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/lu.jl:667
[62] ldiv!(s::Number, X::AbstractArray) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:271
[63] ldiv!(A::Bidiagonal, b::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:734
[64] ldiv!(A::LU{T, Tridiagonal{T, V}}, B::AbstractVecOrMat) where {T, V} in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/lu.jl:598
[65] ldiv!(S::LDLt{<:Any, <:SymTridiagonal}, B::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/ldlt.jl:174
[66] ldiv!(transA::Transpose{<:Any, <:LU{T, Tridiagonal{T, V}}}, B::AbstractVecOrMat) where {T, V} in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/lu.jl:630
[67] ldiv!(B::AbstractVecOrMat, D::Diagonal, A::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:426
[68] lmul!(Q::LinearAlgebra.HessenbergQ, B::AbstractVecOrMat) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:327
[69] lmul!(adjA::Adjoint{<:Any, <:LinearAlgebra.QRPackedQ}, B::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/qr.jl:696
[70] lmul!(adjQ::Adjoint{<:Any, <:LinearAlgebra.HessenbergQ}, B::AbstractVecOrMat) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:352
[71] lmul!(G::LinearAlgebra.Givens, A::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:352
[72] lmul!(R::LinearAlgebra.Rotation, A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:383
[73] lmul!(s::Number, X::AbstractArray) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:219
[74] lmul!(A::LinearAlgebra.QRPackedQ, B::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/qr.jl:629
[75] mul!(out::AbstractMatrix{T}, a::Number, B::UniformScaling, α::Number, β::Number) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:287
[76] normalize(a::AbstractArray, p::Real) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1782
[77] rdiv!(X::AbstractArray, s::Number) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:245
[78] rdiv!(A::AbstractMatrix, B::Bidiagonal) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:864
[79] rmul!(A::AbstractMatrix, G::LinearAlgebra.Givens) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:365
[80] rmul!(A::AbstractMatrix, adjR::Adjoint{<:Any, <:LinearAlgebra.Rotation}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:389
[81] rmul!(A::AbstractMatrix, Q::LinearAlgebra.LQPackedQ) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:428
[82] rmul!(A::AbstractMatrix, Q::LinearAlgebra.HessenbergQ) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:378
[83] rmul!(A::AbstractMatrix, adjQ::Adjoint{<:Any, <:LinearAlgebra.HessenbergQ}) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:403
[84] rmul!(X::AbstractArray, s::Number) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:181
[85] tril!(M::AbstractMatrix, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:172
[86] triu!(M::AbstractMatrix, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:134
[87] rand!(rng::AbstractRNG, A::AbstractArray{T}, sp::Random.Sampler) where T in Random at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/Random/src/Random.jl:270
[88] randexp!(rng::AbstractRNG, A::AbstractArray{T}) where T in Random at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/Random/src/normal.jl:194
[89] randn!(rng::AbstractRNG, A::AbstractArray{T}) where T in Random at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/Random/src/normal.jl:194
[90] randsubseq(r::AbstractRNG, A::AbstractArray{T}, p::Real) where T in Random at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/Random/src/misc.jl:153
[91] randsubseq!(r::AbstractRNG, S::AbstractArray, A::AbstractArray, p::Real) in Random at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/Random/src/misc.jl:92
[92] shuffle!(r::AbstractRNG, a::AbstractArray) in Random at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/Random/src/misc.jl:214

julia> f(m) = try callsnames(m, [:getindex, :setindex!]); catch; @warn "error $m"; true; end
f (generic function with 1 method)

julia> sel = filter(f, m)
┌ Warning: error copyto!(dest::AbstractArray{T1, N}, Rdest::CartesianIndices{N, R} where R<:Tuple{Vararg{OrdinalRange{Int64, Int64}, N}}, src::AbstractArray{T2, N}, Rsrc::CartesianIndices{N, R} where R<:Tuple{Vararg{OrdinalRange{Int64, Int64}, N}}) where {T1, T2, N} in Base at multidimensional.jl:1105
└ @ Main REPL[157]:1
┌ Warning: error isassigned(a::AbstractArray, i::Integer...) in Base at abstractarray.jl:563
└ @ Main REPL[157]:1
┌ Warning: error permutedims!(dest, src::AbstractArray, perm) in Base.PermutedDimsArrays at permuteddimsarray.jl:204
└ @ Main REPL[157]:1
[1] +(A::AbstractMatrix, J::UniformScaling) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:214
[2] -(J::UniformScaling, A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:223
[3] ^(A::AbstractMatrix{T}, p::Real) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:497
[4] axes(A::AbstractArray{T, N}, d) where {T, N} in Base at abstractarray.jl:72
[5] checkbounds(::Type{Bool}, A::AbstractArray, I::Base.LogicalIndex{<:Any, <:AbstractVector{Bool}}) in Base at multidimensional.jl:823
[6] clamp!(x::AbstractArray, lo, hi) in Base.Math at math.jl:139
[7] copyto!(B::AbstractVecOrMat{R}, ir_dest::AbstractRange{Int64}, jr_dest::AbstractRange{Int64}, A::AbstractVecOrMat{S}, ir_src::AbstractRange{Int64}, jr_src::AbstractRange{Int64}) where {R, S} in Base at abstractarray.jl:1098
[8] copyto!(A::AbstractMatrix, J::UniformScaling) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:374
[9] copyto!(dest::AbstractMatrix, Rdest::CartesianIndices{2, R} where R<:Tuple{OrdinalRange{Int64, Int64}, OrdinalRange{Int64, Int64}}, src::SparseArrays.AbstractSparseMatrixCSC{T}, Rsrc::CartesianIndices{2, R} where R<:Tuple{OrdinalRange{Int64, Int64}, OrdinalRange{Int64, Int64}}) where T in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:481
[10] copyto!(dest::AbstractArray{T1, N}, Rdest::CartesianIndices{N, R} where R<:Tuple{Vararg{OrdinalRange{Int64, Int64}, N}}, src::AbstractArray{T2, N}, Rsrc::CartesianIndices{N, R} where R<:Tuple{Vararg{OrdinalRange{Int64, Int64}, N}}) where {T1, T2, N} in Base at multidimensional.jl:1105
[11] copyto!(dest::AbstractArray, bc::Base.Broadcast.Broadcasted{Nothing}) in Base.Broadcast at broadcast.jl:948
[12] copyto!(dest::AbstractArray, bc::Base.Broadcast.Broadcasted{<:Base.Broadcast.AbstractArrayStyle{0}}) in Base.Broadcast at broadcast.jl:916
[13] copyto!(dest::AbstractArray, dstart::Integer, src::AbstractArray, sstart::Integer, n::Integer) in Base at abstractarray.jl:1077
[14] copyto!(dest::AbstractArray, dstart::Integer, src) in Base at abstractarray.jl:910
[15] copyto!(dest::AbstractArray, dstart::Integer, src, sstart::Integer) in Base at abstractarray.jl:920
[16] copyto!(dest::AbstractArray, dstart::Integer, src, sstart::Integer, n::Integer) in Base at abstractarray.jl:949
[17] copyto!(dest::AbstractArray, src) in Base at abstractarray.jl:898
[18] fill!(A::AbstractArray{T}, x) where T in Base at multidimensional.jl:1097
[19] filter(f, a::AbstractArray) in Base at array.jl:2546
[20] first(a::AbstractArray) in Base at abstractarray.jl:404
[21] get(f::Union{Function, Type}, A::AbstractArray, i::Integer) in Base at abstractarray.jl:1498
[22] get(f::Union{Function, Type}, A::AbstractArray, I::Tuple{}) in Base at abstractarray.jl:1499
[23] get(A::AbstractArray, i::Integer, default) in Base at abstractarray.jl:1495
[24] get(A::AbstractArray, I::Tuple{}, default) in Base at abstractarray.jl:1496
[25] get!(X::AbstractArray{T}, A::AbstractArray, I::Union{AbstractVector{Int64}, AbstractRange}, default::T) where T in Base at abstractarray.jl:1511
[26] getindex(A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}, I::AbstractArray) where {Tv, Ti} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:2616
[27] getindex(x::AbstractSparseVector{Tv, Ti}, I::AbstractArray) where {Tv, Ti} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:875
[28] getindex(v::Core.SimpleVector, I::AbstractArray) in Base at essentials.jl:637
[29] hash(A::AbstractArray, h::UInt64) in Base at abstractarray.jl:3067
[30] indexin(a, b::AbstractArray) in Base at array.jl:2407
[31] isassigned(a::AbstractArray, i::Integer...) in Base at abstractarray.jl:563
[32] iterate(A::AbstractArray, state) in Base at abstractarray.jl:1164
[33] kron!(C::AbstractMatrix, A::Diagonal, B::Diagonal) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:579
[34] kron!(C::AbstractMatrix, A::Diagonal, B::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:595
[35] kron!(C::AbstractMatrix, A::AbstractMatrix, B::Diagonal) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:618
[36] kron!(C::AbstractMatrix, A::AbstractMatrix, B::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:366
[37] map!(f::F, dest::AbstractArray, A::AbstractArray) where F in Base at abstractarray.jl:2924
[38] map!(f::F, dest::AbstractArray, A::AbstractArray, B::AbstractArray) where F in Base at abstractarray.jl:2967
[39] permutedims!(dest, src::AbstractArray, perm) in Base.PermutedDimsArrays at permuteddimsarray.jl:204
[40] read!(s::IO, a::AbstractArray{T}) where T in Base at io.jl:775
[41] reinterpret(::Type{T}, a::A) where {T, N, S, A<:AbstractArray{S, N}} in Base at reinterpretarray.jl:28
[42] rot180(A::AbstractMatrix) in Base at arraymath.jl:176
[43] rotl90(A::AbstractMatrix) in Base at arraymath.jl:121
[44] rotr90(A::AbstractMatrix) in Base at arraymath.jl:149
[45] setindex!(A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}, V::AbstractVecOrMat, Ix::Union{Colon, Integer, AbstractVector{<:Integer}}, Jx::Union{Colon, Integer, AbstractVector{<:Integer}}) where {Tv, Ti<:Integer} in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:2895
[46] setindex!(A::SparseArrays.AbstractSparseMatrixCSC, x::AbstractArray, I::AbstractMatrix{Bool}) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:3023
[47] setindex!(A::SparseArrays.AbstractSparseMatrixCSC, x::AbstractArray, Ix::AbstractVector{<:Integer}) in SparseArrays at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:3124
[48] setindex!(A::Array, X::AbstractArray, I::AbstractVector{Int64}) in Base at array.jl:971
[49] show(io::IO, ::MIME{Symbol("text/plain")}, X::AbstractArray) in Base at arrayshow.jl:363
[50] size(t::AbstractArray{T, N}, d) where {T, N} in Base at abstractarray.jl:42
[51] stride(A::AbstractArray, k::Integer) in Base at abstractarray.jl:546
[52] tanh(A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:1076
[53] axpby!(α, x::AbstractArray, β, y::AbstractArray) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1431
[54] axpy!(α, x::AbstractArray, rx::AbstractArray{<:Integer}, y::AbstractArray, ry::AbstractArray{<:Integer}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1417
[55] axpy!(α, x::AbstractArray, y::AbstractArray) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1406
[56] copy_transpose!(B::AbstractVecOrMat, ir_dest::AbstractRange{Int64}, jr_dest::AbstractRange{Int64}, A::AbstractVecOrMat, ir_src::AbstractRange{Int64}, jr_src::AbstractRange{Int64}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/transpose.jl:181
[57] diag(A::AbstractMatrix, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:249
[58] dot(x::AbstractVector, A::AbstractMatrix, y::AbstractVector) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:918
[59] dot(x::AbstractArray, y::AbstractArray) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:873
[60] givens(A::AbstractMatrix, i1::Integer, i2::Integer, j::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:313
[61] ishermitian(A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1240
[62] issymmetric(A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1201
[63] ldiv!(c::AbstractVecOrMat, A::Bidiagonal, b::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:735
[64] ldiv!(adjA::Adjoint{<:Any, <:LU{T, Tridiagonal{T, V}}}, B::AbstractVecOrMat) where {T, V} in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/lu.jl:667
[65] ldiv!(s::Number, X::AbstractArray) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:271
[66] ldiv!(A::Bidiagonal, b::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:734
[67] ldiv!(A::LU{T, Tridiagonal{T, V}}, B::AbstractVecOrMat) where {T, V} in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/lu.jl:598
[68] ldiv!(S::LDLt{<:Any, <:SymTridiagonal}, B::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/ldlt.jl:174
[69] ldiv!(transA::Transpose{<:Any, <:LU{T, Tridiagonal{T, V}}}, B::AbstractVecOrMat) where {T, V} in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/lu.jl:630
[70] ldiv!(B::AbstractVecOrMat, D::Diagonal, A::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:426
[71] lmul!(Q::LinearAlgebra.HessenbergQ, B::AbstractVecOrMat) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:327
[72] lmul!(adjA::Adjoint{<:Any, <:LinearAlgebra.QRPackedQ}, B::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/qr.jl:696
[73] lmul!(adjQ::Adjoint{<:Any, <:LinearAlgebra.HessenbergQ}, B::AbstractVecOrMat) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:352
[74] lmul!(G::LinearAlgebra.Givens, A::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:352
[75] lmul!(R::LinearAlgebra.Rotation, A::AbstractMatrix) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:383
[76] lmul!(s::Number, X::AbstractArray) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:219
[77] lmul!(A::LinearAlgebra.QRPackedQ, B::AbstractVecOrMat) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/qr.jl:629
[78] mul!(out::AbstractMatrix{T}, a::Number, B::UniformScaling, α::Number, β::Number) where T in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:287
[79] normalize(a::AbstractArray, p::Real) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:1782
[80] rdiv!(X::AbstractArray, s::Number) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:245
[81] rdiv!(A::AbstractMatrix, B::Bidiagonal) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:864
[82] rmul!(A::AbstractMatrix, G::LinearAlgebra.Givens) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:365
[83] rmul!(A::AbstractMatrix, adjR::Adjoint{<:Any, <:LinearAlgebra.Rotation}) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/givens.jl:389
[84] rmul!(A::AbstractMatrix, Q::LinearAlgebra.LQPackedQ) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:428
[85] rmul!(A::AbstractMatrix, Q::LinearAlgebra.HessenbergQ) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:378
[86] rmul!(A::AbstractMatrix, adjQ::Adjoint{<:Any, <:LinearAlgebra.HessenbergQ}) in GenericLinearAlgebra at /home/crusius/.julia/packages/GenericLinearAlgebra/w5JSi/src/svd.jl:403
[87] rmul!(X::AbstractArray, s::Number) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/generic.jl:181
[88] tril!(M::AbstractMatrix, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:172
[89] triu!(M::AbstractMatrix, k::Integer) in LinearAlgebra at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/LinearAlgebra/src/dense.jl:134
[90] rand!(rng::AbstractRNG, A::AbstractArray{T}, sp::Random.Sampler) where T in Random at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/Random/src/Random.jl:270
[91] randexp!(rng::AbstractRNG, A::AbstractArray{T}) where T in Random at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/Random/src/normal.jl:194
[92] randn!(rng::AbstractRNG, A::AbstractArray{T}) where T in Random at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/Random/src/normal.jl:194
[93] randsubseq(r::AbstractRNG, A::AbstractArray{T}, p::Real) where T in Random at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/Random/src/misc.jl:153
[94] randsubseq!(r::AbstractRNG, S::AbstractArray, A::AbstractArray, p::Real) in Random at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/Random/src/misc.jl:92
[95] shuffle!(r::AbstractRNG, a::AbstractArray) in Random at /home/crusius/julia-1.8.4/share/julia/stdlib/v1.8/Random/src/misc.jl:214
```
