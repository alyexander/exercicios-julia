#
# Desenvolva um programa que leia as duas notas de um aluno, calcule e mostre a sua média.
#
using Printf

print("Insira a primeira nota do aluno: ")
n1 = parse(Float64, readline())

print("Insira a segunda nota do aluno: ")
n2 = parse(Float64, readline())

m = (n1 + n2) / 2

println("A média entre $n1 e $n2 é igual a $(@sprintf("%.1f", m))")