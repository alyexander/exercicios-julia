#
# Faça um algoritmo que leia o salário de um funcionário e mostre seu novo salário, com 15% de aumento.
#
using Printf

print("Insira o salário do funcionário: R\$")
salario = parse(Float64, readline())

println("O salário era de R\$$(@sprintf("%.2f", salario)), receberá um reajuste de 15% e passará a ser de R\$$(@sprintf("%.2f", salario * 1.15))")