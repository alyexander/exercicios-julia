#
# Escreva um programa que leia um valor em metros e o exiba convertido em centímetros e milímetros.
#

print("Digite uma distância em metros: ")
m = parse(Float64, readline())

println("$m metros correspondem a: ")

println("$(m / 1000) kilometros")
println("$(m / 100) hectometros")
println("$(m / 10) decametros")
println("$(m * 10) decimetros")
println("$(m * 100) centimetros")
println("$(m * 1000) milimetros")