
using InteractiveUtils

"""
    code_typed(::Method; optimize=true, debuginfo::Symbol=:default) -> ::Core.CodeInfo

Return code_typed for given method (including signature).

The method is returnd by `method(f, types)` or `methodswith(f, module)` for example.
"""
function Base.code_typed(m::Method; optimize=true, debuginfo::Symbol=:default)
    codes = Base.code_typed_by_type(m.sig; optimize, debuginfo)
    i = findfirst(d -> d === m, first(c).parent.def for c in codes)
    first(codes[i])
end

export callsnames
function callsnames(c::Core.CodeInfo, s::AbstractVector{Symbol})
    f(x) = x isa Expr && x.head == :call && x.args[1] isa GlobalRef && x.args[1].name ∈ s
    !isempty(filter(f, c.code))
end

"""
    callsnames(m::Method, s::Vector{Symbol}) -> ::Bool

Return iff the method calls one of the functions in `s`.
"""
function callsnames(m::Method, s::AbstractVector{Symbol}; optimize=true)
    c = code_typed(m; optimize)
    callsnames(c, s)
end

export methods_with_getset
"""
    methods_with_getset(T::Type; supertypes=false)

Return all methods in current methods list, which use `T` as an argument type
and call `getindex` or `setindex!` in their implementation.

Methods, that cannot be analyzed are also contained in output and a warning
message is issued for them.
"""
function methods_with_getset(::Type{T}; supertypes=false) where T
    f(m) = try callsnames(m, [:getindex, :setindex!]); catch; @warn "error $m"; true; end
    m = methodswith(T; supertypes)
    filter(f, m);
end
