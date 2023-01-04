# AbsArrFallbackTrap

[![Build Status](https://github.com/KlausC/AbsArrFallbackTrap.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/KlausC/AbsArrFallbackTrap.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/KlausC/AbsArrFallbackTrap.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/KlausC/AbsArrFallbackTrap.jl)

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
