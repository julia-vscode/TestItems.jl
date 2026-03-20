using TestItemRunner

@testitem "Test @testitem" begin

    x = @testitem "Name of the test item" begin
        println("Hello world")
    end
    @test x === nothing
end

@testitem "Test @testmodule and @testsnippet" begin
    y = @testmodule Foo begin
        const x = 10
        getfloat() = rand()
    end
    @test y === nothing
end

@testitem "Test @testsnippet" begin

    z = @testsnippet Bar begin
        println("Hello world")
    end
    @test z === nothing
end

@testitem "Test @ccall in @testitem" begin
    w = @testitem begin
        error()
        @ccall splork
    end
    @test w === nothing
end

@run_package_tests
