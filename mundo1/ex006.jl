#
# Crie um algoritmo que leia um número e mostre o seu dobro, triplo e raiz quadrada.
#
using Printf

print("Digite um número: ")
α = parse(Int64, readline())

println("O dobro de $α é $(α*2).")
println("O triplo de $α é $(α*3).")
println("A raíz quadrada de $α é $(@sprintf("%.2f", √α)).")
