module TestItems

export @testitem, @testmodule, @testsnippet

macro testitem(ex...)
    return nothing
end

macro testmodule(ex...)
    return nothing
end

macro testsnippet(ex...)
    return nothing
end

end
