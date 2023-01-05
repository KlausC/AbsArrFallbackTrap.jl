module FallbackTests

using AbsArrFallbackTrap
using LinearAlgebra
using SparseArrays
using Test

iseq(a::Int, b::Int) = abs(a - b) <= 0

function filter_code_typed(a, b)
    r = code_typed(a, b)[1][1].code
    filter(x -> !(x isa Expr && x.head == :code_coverage_effect), r)
end

@testset "FallbackTests" begin

    B = sprand(100, 100, 0.1)
    A = Matrix(B)
    C = view(A, 2:99, :)
    D = view(B, 2:99, :)

    # check that compiler creates similar code for the 3 variants
    @testset "samecode $(typeof(M))" for M in (A, B, C, D)
        T = Tuple{typeof(M)}
        c_del = filter_code_typed(usum_del, T)
        c_tra = filter_code_typed(usum_trait, T)
        c_tty = filter_code_typed(usum_traittype, T)

        @test iseq(length(c_del), length(c_tra))
        @test iseq(length(c_del), length(c_tty))
        @test length(c_tty) <= 10
    end

    @testset "sameresult $(typeof(M)) $f" for M in (A, B, C, D),
        f in (usum_del, usum_trait, usum_traittype)

        @test f(M) ≈ sum(M)
    end
end

end # module
