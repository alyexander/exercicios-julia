#
# Escreva um programa que converta uma temperatura digitando em graus Celsius e converta para graus Fahrenheit.
#
using Printf

print("Informe a temperatura em Celsius (ºC): ")
c = parse(Float64, readline())
f = c * 1.8 + 32 

println("$(c)ºC equivale a $(@sprintf("%.1f", f))ºF")