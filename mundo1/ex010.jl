#
# Crie um programa que leia quanto dinheiro uma pessoa tem na carteira e mostre quantos dólares ela pode comprar.
#
using Printf

print("Insira um valor em real: R\$")
real = parse(Float64, readline())
dolar = 5.16 # 22/06/2026

println("Com $real você pode comprar até U\$$(@sprintf("%.2f", real/dolar))")