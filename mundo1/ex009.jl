#
# Faça um programa que leia um número Inteiro qualquer e mostre na tela a sua tabuada.
#
using Printf

print("Insira um número: ")
α = parse(Int64, readline())
β = 1

println("-"^13)
println(@sprintf("%d x %2d = %3d", α, β, α * β))
β += 1
println(@sprintf("%d x %2d = %3d", α, β, α * β))
β += 1
println(@sprintf("%d x %2d = %3d", α, β, α * β))
β += 1
println(@sprintf("%d x %2d = %3d", α, β, α * β))
β += 1
println(@sprintf("%d x %2d = %3d", α, β, α * β))
β += 1
println(@sprintf("%d x %2d = %3d", α, β, α * β))
β += 1
println(@sprintf("%d x %2d = %3d", α, β, α * β))
β += 1
println(@sprintf("%d x %2d = %3d", α, β, α * β))
β += 1
println(@sprintf("%d x %2d = %3d", α, β, α * β))
β += 1
println(@sprintf("%d x %2d = %3d", α, β, α * β))
println("-"^13)