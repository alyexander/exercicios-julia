#
# Faça um programa que leia um número Inteiro e mostre na tela o seu sucessor e seu antecessor.
#

print("Digite um número: ")
α = parse(Int64, readline())
println("O sucessor de $α é $(α+1) e o antecessor é $(α-1).")