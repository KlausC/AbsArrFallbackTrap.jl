module FallbackTests

using AbsArrFallbackTrap
using LinearAlgebra
using SparseArrays
using Test

isapprox(a::Int, b::Int) = abs(a - b) <= 3

@testset "FallbackTests" begin

    B = sprand(100, 100, 0.1)
    A = Matrix(B)
    C = view(A, 2:99, :)
    D = view(B, 2:99, :)

    # check that compiler creates similar code for the 3 variants
    @testset "samecode $(typeof(M))" for M in (A, B, C, D)
        T = Tuple{typeof(M)}
        c_del = code_typed(usum_del, T)[1][1]
        c_tra = code_typed(usum_trait, T)[1][1]
        c_tty = code_typed(usum_traittype, T)[1][1]
        names = (:rettype, :inlineable, :pure)
        @testset "$name" for name in names
            @test ==(getproperty(c_del, name), getproperty(c_tra, name))
            @test ==(getproperty(c_del, name), getproperty(c_tty, name))
        end
        @test length(c_del.code) ≈ length(c_tra.code) ≈ length(c_tty.code) > 5
    end

    @testset "sameresult $(typeof(M)) $f" for M in (A, B, C, D),
        f in (usum_del, usum_trait, usum_traittype)

        @test f(M) ≈ sum(M)
    end
end

end # module
