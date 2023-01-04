module FallbackTests

using AbsArrFallbackTrap
using LinearAlgebra
using SparseArrays
using Test

function isdeepequal(a::T, b::T) where T<:Union{AbstractArray,Core.SimpleVector}
    typeof(a) == typeof(b) || return false
    axes(a) == axes(b) || return false
    N = fieldcount(typeof(a))
    for i in eachindex(a)
        iaai = isassigned(a, i)
        iaai == isassigned(b, i) || return false
        iaai && isdeepequal(a[i], b[i]) || return false
    end
    return true
end
function isdeepequal(a::Any, b::Any)
    typeof(a) == typeof(b) || return false
    N = fieldcount(typeof(a))
    for i in 1:N
        iaai = isdefined(a, i)
        iaai == isdefined(b, i) || return false
        iaai && !isdeepequal(getfield(a, i), getfield(b, i)) && return false
    end
    return N > 0 || isequal(a, b)
end
function isdeepequal(a::T, b::T) where T<:Union{Type,Core.MethodInstance,Core.Method}
    a == b
end

@testset "FallbackTests" begin

    B = sprand(100, 100, 0.1)
    A = Matrix(B)
    C = view(A, 2:99, :)
    D = view(B, 2:99, :)

    # check that compiler creates same code for the 3 variants
    @testset "samecode $(typeof(M))" for M in (A, B, C, D)
        T = Tuple{typeof(M)}
        c_del = code_typed(usum_del, T)[1][1]
        c_tra = code_typed(usum_trait, T)[1][1]
        c_tty = code_typed(usum_traittype, T)[1][1]
        names = (:code, :rettype, :inlineable, :pure)
        @testset "$name" for name in names
            @test isdeepequal(getproperty(c_del, name), getproperty(c_tra, name))
            @test isdeepequal(getproperty(c_del, name), getproperty(c_tty, name))
        end
    end

    @testset "sameresult $(typeof(M)) $f" for M in (A, B, C, D),
        f in (usum_del, usum_trait, usum_traittype)

        @test f(M) ≈ sum(M)
    end
end

end # module
