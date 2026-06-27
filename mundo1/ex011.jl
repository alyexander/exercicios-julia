#
# Faça um programa que leia a largura e a altura de uma parede em metros, calcule a sua área e a quantidade de tinta necessária para pintá-la, sabendo que cada litro de tinta pinta uma área de 2 metros quadrados.
#
using Printf

print("Insira a largura da parede: ")
l = parse(Float64, readline())

print("Insira a altura da parede: ")
h = parse(Float64, readline())

a = l * h
tinta = a / 2

println("Para pintar uma parede de $(@sprintf("%.2f", a))m² ($l x $h) serão necessários $(@sprintf("%.2f", tinta))l de tinta.")