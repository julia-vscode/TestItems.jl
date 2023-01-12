using TestItems
using Test

@testsetup TestSetup begin
    const x = 10
    getfloat() = rand()
end

@testset "TestItems" begin

    x = @testitem "Name of the test item" begin

    end

    @test x === nothing
    @test TestSetup.x === 10
    @test TestSetup.getfloat() isa Float64
end
