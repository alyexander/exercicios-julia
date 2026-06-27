#
# Faça um algoritmo que leia o preço de um produto e mostre seu novo preço, com 5% de desconto.
#
using Printf

print("Insira o preço do produto: R\$")
preco = parse(Float64, readline())

println("O produto que custa R\$$(@sprintf("%.2f", preco)) receberá 5% de desconto e passará a custar R\$$(@sprintf("%.2f", preco - (preco * .05)))")