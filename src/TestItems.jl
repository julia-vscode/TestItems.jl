module TestItems

export @testitem, @testsetup

macro testitem(ex...)
    return nothing
end

macro testsetup(ex...)
    return nothing
end

end
