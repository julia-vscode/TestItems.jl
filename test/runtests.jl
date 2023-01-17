using TestItems
using Test

@testset "TestItems" begin

    x = @testitem "Name of the test item" begin

    end

    @test x === nothing

    x = @testsetup module TestSetup begin
        const x = 10
        getfloat() = rand()
    end
    @test x === nothing

end
