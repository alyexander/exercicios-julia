# Faça um programa que leia algo pelo teclado e mostre na tela o seu tipo primitivo e todas as informações possíveis sobre ele.
print("Digite algo: ")
algo = readline();
println("Tipo: ", typeof(algo)) # sempre vai dar string porque readline() só retorna strings
println("É formada por espaço: ", all(isspace, algo)) # all percorre toda a string, porque esses métodos lidam com caracteres isolados
println("É formada por letras: ", all(isletter, algo))
println("É formada por números: ", all(isdigit, algo))
println("É alfanumérico: ", all(isletter(c) || isdigit(c) for c in algo))
println("Está em caixa baixa: ", algo == lowercase(algo))
println("Está em caixa alta: ", algo == uppercase(algo))
println("Está capitalizada: ", algo == uppercasefirst(algo))