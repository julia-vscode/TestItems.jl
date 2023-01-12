module TestItems

export @testitem, @testsetup

macro testitem(ex...)
    return nothing
end

macro testsetup(name, code)
    return Expr(:toplevel, Expr(:module, true, esc(name), esc(code)))
end

end
