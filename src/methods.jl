
export methodsbetween

import Base: unwrap_unionall, rewrap_unionall

wraptype(::Type{T}) where T = T
wraptype(::Type{<:Adjoint{T,W}}) where {T,W} = wraptype(W)
wraptype(::Type{<:Transpose{T,W}}) where {T,W} = wraptype(W)
wraptype(::Type{<:Hermitian{T,W}}) where {T,W} = wraptype(W)
wraptype(::Type{<:Symmetric{T,W}}) where {T,W} = wraptype(W)
wraptype(::Type{<:UpperTriangular{T,W}}) where {T,W} = wraptype(W)
wraptype(::Type{<:LowerTriangular{T,W}}) where {T,W} = wraptype(W)
wraptype(::Type{<:UnitUpperTriangular{T,W}}) where {T,W} = wraptype(W)
wraptype(::Type{<:UnitLowerTriangular{T,W}}) where {T,W} = wraptype(W)
wraptype(::Type{<:SubArray{T,N,W}}) where {T,N,W} = wraptype(W)
wraptype(::Type{<:Diagonal{T,W}}) where {T,W} = wraptype(W)
wraptype(::Type{<:Bidiagonal{T,W}}) where {T,W} = wraptype(W)
wraptype(::Type{<:Tridiagonal{T,W}}) where {T,W} = wraptype(W)
wraptype(::Type{<:SymTridiagonal{T,W}}) where {T,W} = wraptype(W)
wraptype(T::Core.TypeofVararg) = T.T

# copied from `stdlib/InteractiveUtils.jl`

function type_close_enough(@nospecialize(x), @nospecialize(t))
    tlo = first(t)
    tup = last(t)
    y = wraptype(x)
    #println(x, " of type ", typeof(x))
    (isa(x, DataType) || isa(x, UnionAll) ) && x <: tup && !(y <: tlo) && return true
    # TODO: handle DataType and UnionAll properly
    return isa(x, Union) && isa(t, DataType) &&
           (type_close_enough(x.a, t) || type_close_enough(x.b, t))
end

# `methodsbetween` -- shows a list of methods using the type given
"""
    methodsbetween(typlo => typhi[, module or function])

Return an array of methods with an argument of type `t` with `typlo !(<:) t <: typhi`.

The optional second argument restricts the search to a particular module or function
(the default is all top-level modules).
"""
function methodsbetween(t::Pair{<:Type,<:Type}, f::Base.Callable, meths=Method[])
    for d in methods(f)
        if any(function (x)
                let x = rewrap_unionall(x, d.sig)
                    type_close_enough(x, t)
                end
            end,
            unwrap_unionall(d.sig).parameters)
            push!(meths, d)
        end
    end
    return meths
end

function methodsbetween(t::Pair{<:Type,<:Type}, m::Module)
    meths = Method[]
    for nm in names(m)
        if isdefined(m, nm)
            f = getfield(m, nm)
            if isa(f, Base.Callable)
                methodsbetween(t, f, meths)
            end
        end
    end
    return unique(meths)
end

function methodsbetween(t::Pair{<:Type,<:Type})
    meths = Method[]
    for mod in Base.loaded_modules_array()
        append!(meths, methodsbetween(t, mod))
    end
    return unique(meths)
end
