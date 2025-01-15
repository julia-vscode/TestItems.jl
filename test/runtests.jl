using TestItems
using Test

@testset "TestItems" begin

    x = @testitem "Name of the test item" begin
        println("Hello world")
    end
    @test x === nothing

    y = @testmodule Foo begin
        const x = 10
        getfloat() = rand()
    end
    @test y === nothing

    z = @testsnippet Bar begin
        println("Hello world")
    end
    @test z === nothing

    w = @testitem begin
        error()
        @ccall splork
    end
    @test w === nothing
end
