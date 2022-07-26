using TestItems
using Test

@testset "TestItems" begin

    x = @testitem "Name of the test item" begin

    end

    @test x == nothing

end
