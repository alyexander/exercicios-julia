#
# Escreva um programa que pergunte a quantidade de Km percorridos por um carro alugado e a quantidade de dias pelos quais ele foi alugado. Calcule o preço a pagar, sabendo que o carro custa R$60 por dia e R$0,15 por Km rodado.
#

using Printf

print("Quantos dias alugados? ")
dias = parse(Int64, readline())

print("Qual a kilometragem rodada? ")