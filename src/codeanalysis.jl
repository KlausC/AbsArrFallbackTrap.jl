
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
