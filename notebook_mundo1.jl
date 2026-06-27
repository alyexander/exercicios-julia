### A Pluto.jl notebook ###
# v1.0.1

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    #! format: off
    return quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
    #! format: on
end

# ╔═╡ 858435bc-71d1-11f1-a682-a7922dda607a
using PlutoUI, Printf, Random, HypertextLiteral

# ╔═╡ 24941a8f-3275-4730-9bbe-2aa3610a7ea9
md"""# Exercícios do Mundo 1
Exercícios do [Mundo 1](https://www.youtube.com/playlist?list=PLHz_AreHm4dlKP6QQCekuIPky1CiwmdI6) do curso de Python do Curso em Vídeo feitos em Julia usando [Pluto.jl](https://plutojl.org)"""

# ╔═╡ 71691cb0-ff0a-4a30-81b6-fee5df2be77d
md"""## Exercício 1
Crie um programa que mostre "Olá, mundo!" na tela."""

# ╔═╡ 6116ee34-73c8-4da5-ba12-ba276fdf778d
println("Olá, mundo!")

# ╔═╡ 0b9dd805-e842-4784-a865-d50ca00f60c1
md"""## Exercício 2
Faça um programa que leia o nome de uma pessoa e mostre uma mensagem de boas-vindas."""

# ╔═╡ 6a982050-6c1c-475a-bbd0-e478780cad63
@bind nome TextField(default="Antedeguemon")

# ╔═╡ 4eea9b5f-3096-4e1b-add0-378304a2250a
println("Olá, " * nome * "!")

# ╔═╡ 6cb3b3ff-5bdc-427d-97b9-7fe7823f30b0
md"""## Exercício 3
Crie um programa que leia dois números e mostre a soma entre eles."""

# ╔═╡ 2e720dd5-cebd-4587-a602-b50aa137ba14
@bind a Slider(0:99, show_value=true)

# ╔═╡ 273ad47a-74a2-4312-9f8e-a1ba99eed935
@bind b Slider(0:99, show_value=true)

# ╔═╡ e41ea332-7d38-4954-a886-0cff6af38dc7
println(a, " + ", b, " = ", a+b)

# ╔═╡ 4059736c-191d-4efb-9a0a-25ede176660e
md"""## Exercício 4
Faça um programa que leia algo pelo teclado e mostre na tela o seu tipo primitivo e todas as informações possíveis sobre ele."""

# ╔═╡ 5b640e50-80e6-4931-bb55-cef832d7be8e
@bind algo TextField(default="Antedeguemon")

# ╔═╡ be22500b-8d93-48b3-824e-e2b2a51899ad
begin
	println("Tipo: ", typeof(algo)) # sempre vai dar string porque TextField() só retorna strings
	println("É formada por espaço: ", all(isspace, algo)) # all percorre toda a string, porque esses métodos lidam com caracteres isolados
	println("É formada por letras: ", all(isletter, algo))
	println("É formada por números: ", all(isdigit, algo))
	println("É alfanumérico: ", all(isletter(c) || isdigit(c) for c in algo))
	println("Está em caixa baixa: ", algo == lowercase(algo))
	println("Está em caixa alta: ", algo == uppercase(algo))
	println("Está capitalizada: ", algo == uppercasefirst(algo))
end

# ╔═╡ 49390a03-3b57-43ef-8214-c5b6ebef398c
md"""## Exercício 5
Faça um programa que leia um número Inteiro e mostre na tela o seu sucessor e seu antecessor."""

# ╔═╡ 689b744f-e03f-4d35-9d30-c387491500b2
@bind c Slider(0:99, show_value=true)

# ╔═╡ 21c82312-0be5-424f-937c-4cbe7ff5b205
begin
	println("O antecessor de ", c, " é ", c - 1)
	println("O sucessor de ", c, " é ", c + 1)
end

# ╔═╡ bb773483-0717-4d3a-890d-c7f4b54b65b9
md"""## Exercício 6
Crie um algoritmo que leia um número e mostre o seu dobro, triplo e raiz quadrada."""

# ╔═╡ 593b4d91-15f5-4556-840b-ba23b702ac1c
@bind d Slider(0:99, show_value=true)

# ╔═╡ 52abe88d-2d93-4c11-88b8-5bcfe4e0f7f4
begin
	println("O dobro de $d é $(d*2).")
	println("O triplo de $d é $(d*3).")
	println("A raíz quadrada de $d é $(@sprintf("%.2f", √d)).")
end

# ╔═╡ cf76db91-a718-47bd-8f15-e7ade6efb95a
md"""## Exercício 7
Desenvolva um programa que leia as duas notas de um aluno, calcule e mostre a sua média."""

# ╔═╡ 4b6d118c-b39c-4a1c-8f25-87de24468a5f
@bind n1 NumberField(default=5)

# ╔═╡ c3861202-e048-4e7f-aee4-9e39682bba81
@bind n2 NumberField(default=5)

# ╔═╡ 5a6e7ede-10f9-4fd4-aa67-a228f559c3b2
begin
	m = (n1 + n2) / 2
	println("A média entre $n1 e $n2 é igual a $(@sprintf("%.1f", m))")
end

# ╔═╡ cb836499-7231-41bb-babc-c3c4a65da6d9
md"""## Exercício 8
Escreva um programa que leia um valor em metros e o exiba convertido em centímetros e milímetros."""

# ╔═╡ ba35f47e-a5c5-4f39-90cc-8cded7f5dbdb
@bind mt NumberField(default=1)

# ╔═╡ 974a6745-411e-4c58-98bf-08258bb7d0a8
begin
	println("$mt metros correspondem a: ")

	println("$(mt / 1000) kilometros")
	println("$(mt / 100) hectometros")
	println("$(mt / 10) decametros")
	println("$(mt * 10) decimetros")
	println("$(mt * 100) centimetros")
	println("$(mt * 1000) milimetros")
end

# ╔═╡ f6f87090-2ec3-4432-ac1d-56558b28a657
md"""## Exercício 9
Faça um programa que leia um número Inteiro qualquer e mostre na tela a sua tabuada."""

# ╔═╡ 3b07763f-3388-4ddb-bbf7-83a3dfa5bfe1
@bind α Slider(0:10, show_value=true)

# ╔═╡ c620480e-ea75-46e6-b74d-aeaaf572101b
begin
	β = 1

	println("-"^13)
	println(@sprintf("%d x %2d = %3d", α, β, α * β))
	β += 1
	println(@sprintf("%d x %2d = %3d", α, β, α * β))
	β += 1
	println(@sprintf("%d x %2d = %3d", α, β, α * β))
	β += 1
	println(@sprintf("%d x %2d = %3d", α, β, α * β))
	β += 1
	println(@sprintf("%d x %2d = %3d", α, β, α * β))
	β += 1
	println(@sprintf("%d x %2d = %3d", α, β, α * β))
	β += 1
	println(@sprintf("%d x %2d = %3d", α, β, α * β))
	β += 1
	println(@sprintf("%d x %2d = %3d", α, β, α * β))
	β += 1
	println(@sprintf("%d x %2d = %3d", α, β, α * β))
	β += 1
	println(@sprintf("%d x %2d = %3d", α, β, α * β))
	println("-"^13)
end

# ╔═╡ 2179a0c2-3e22-40fe-af17-d88eaef3589f
md"""## Exercício 10
Crie um programa que leia quanto dinheiro uma pessoa tem na carteira e mostre quantos dólares ela pode comprar."""

# ╔═╡ ea844bf2-5563-4af5-b0cd-dbcc7b0e15a5
@bind reais NumberField(default=5.16)

# ╔═╡ 01e7220f-77fd-4488-9df6-754cd5728fdd
println("Com R\$$reais você pode comprar até U\$$(@sprintf("%.2f", reais/5.16))")

# ╔═╡ ae0664b3-e585-4ee6-bf10-b14761c180bc
md"""## Exercício 11
Faça um programa que leia a largura e a altura de uma parede em metros, calcule a sua área e a quantidade de tinta necessária para pintá-la, sabendo que cada litro de tinta pinta uma área de 2 metros quadrados."""

# ╔═╡ f4556d4b-fb89-41d0-8275-3326471d7dbe
@bind largura NumberField(default=1.0)

# ╔═╡ 32226171-41dd-4694-ab40-2fa9013554c6
@bind altura NumberField(default=1.0)

# ╔═╡ c4aa2926-43db-4143-912c-de9692b92896
begin
	area = largura * altura
	tinta = area / 2
	println("Para pintar uma parede de $(@sprintf("%.2f", area))m² ($largura x $altura). Serão necessários $(@sprintf("%.2f", tinta))l de tinta.")
end

# ╔═╡ acf2f464-7d4a-4949-ac2f-71ea1bd7c4bb
md"""## Exercício 12
Faça um algoritmo que leia o preço de um produto e mostre seu novo preço, com 5% de desconto."""

# ╔═╡ 949e2c16-5ca3-4b3c-ae3a-1dd27e712e53
@bind preco NumberField(default=0.99)

# ╔═╡ 6495b666-7050-4ac7-93cd-e6bfa791dd03
println("O produto que custa R\$$(@sprintf("%.2f", preco)) receberá 5% de desconto e passará a custar R\$$(@sprintf("%.2f", preco - (preco * .05)))")

# ╔═╡ 8961f80b-b84e-49a7-ad76-d91787c47470
md"""## Exercício 13
Faça um algoritmo que leia o salário de um funcionário e mostre seu novo salário, com 15% de aumento."""

# ╔═╡ a2739d35-8cf8-4926-883b-d620f680213a
@bind salario NumberField(default=1621)

# ╔═╡ 0806798c-3a14-4054-a9ef-297c907a9b8f
println("O salário era de R\$$(@sprintf("%.2f", salario)), receberá um reajuste de 15% e passará a ser de R\$$(@sprintf("%.2f", salario * 1.15))")

# ╔═╡ 015f354b-5f16-43b8-ba9e-40991c787993
md"""## Exercício 14
Escreva um programa que converta uma temperatura digitando em graus Celsius e converta para graus Fahrenheit."""

# ╔═╡ 596c1613-5b78-47f7-a8f6-58b10e52ccf5
@bind celsius NumberField(default=18)

# ╔═╡ f3b3ba63-6dfd-4daa-8aff-48a19b46515c
begin
	fahrenheit = celsius * 1.8 + 32
	println("$(celsius)ºC equivale a $(@sprintf("%.1f", fahrenheit))ºF")
end

# ╔═╡ a91c5dbe-ea13-4044-9ce5-7822fe6be4b1
md"""## Exercício 15
Escreva um programa que pergunte a quantidade de Km percorridos por um carro alugado e a quantidade de dias pelos quais ele foi alugado. Calcule o preço a pagar, sabendo que o carro custa R\$60 por dia e R\$0,15 por Km rodado."""

# ╔═╡ 46127de8-c6ce-4f2c-9550-ceea616e49c0
@bind kilometragem NumberField(default=0)

# ╔═╡ a9eaaa20-9e78-424e-90d1-8daacfbe9beb
@bind dias NumberField(default=0)

# ╔═╡ 858c5382-b065-4ead-ae65-408f14fadf63
begin
	valor_total = 60 * dias + .15 * kilometragem
	println("Você alugou o carro por $dias e rodou $(@sprintf("%.2f", kilometragem)). O valor total a ser pago é de R\$$(@sprintf("%.2f", valor_total))")
end

# ╔═╡ f88cec7e-0594-4e93-8051-97b9f1eb1453
md"""## Exercício 16
Crie um programa que leia um número Real qualquer pelo teclado e mostre na tela a sua porção Inteira."""

# ╔═╡ f8a2193e-775b-48af-b522-e541ef583d9b
@bind x Slider(0.00 : 0.01 : 99.00; show_value=true)

# ╔═╡ 3e9c4fe6-7424-42e2-b884-e71d5d6e2266
println("O valor atual de x é $x, mas sua porção inteira é $(Int(trunc(x)))")

# ╔═╡ 0e909120-aefb-4445-ac99-4c40207876a5
md"""## Exercício 17
Faça um programa que leia o comprimento do cateto oposto e do cateto adjacente de um triângulo retângulo. Calcule e mostre o comprimento da hipotenusa."""

# ╔═╡ ff66b45f-2d5c-4bb8-a84e-362ef9fdfeb5
@bind cateto_ops NumberField(default=0)	

# ╔═╡ d7b77f0e-b5dc-442f-b699-774e5956738b
@bind cateto_adj NumberField(default=0)

# ╔═╡ 28bbef28-43ea-42ca-8a55-f3bf767eb60d
begin
	hipotenusa = √(cateto_ops^2 + cateto_adj^2)
	println("A hipotenusa vai medir $(@sprintf("%.2f", hipotenusa))")
end

# ╔═╡ 38f15a68-76e5-45c5-9796-065735ef27d7
md"""## Exercício 18
Faça um programa que leia um ângulo qualquer e mostre na tela o valor do seno, cosseno e tangente desse ângulo."""

# ╔═╡ ba0dcb39-b579-4ac5-a0cf-8b4919f922cb
@bind angulo Slider(0.00 : 0.01 : 360.00; show_value=true)

# ╔═╡ 5c193c28-e9af-4576-9364-fbae8ed2e9ea
begin
	radianos = angulo * π/180
	println("Seno: $(@sprintf("%.2f", sin(radianos)))")
	println("Cosseno: $(@sprintf("%.2f", cos(radianos)))")
	println("Tangente: $(@sprintf("%.2f", tan(radianos)))")
end

# ╔═╡ 45816ffa-4de3-481e-b8da-71fba5f26239
md"""## Exercício 19
Um professor quer sortear um dos seus quatro alunos para apagar o quadro. Faça um programa que ajude ele, lendo o nome dos alunos e escrevendo na tela o nome do escolhido."""

# ╔═╡ db820568-eb19-42ea-a86b-07823b1b2d43
@bind a1 TextField(default="Antedeguemon")

# ╔═╡ efec43cf-813d-4782-a0fc-3071b2c32296
@bind a2 TextField(default="Antedeguemon 2")

# ╔═╡ 061d9d73-cfc2-44da-86a7-3ae85df6d41c
@bind a3 TextField(default="Antedeguemon 3")

# ╔═╡ 79a16707-e58c-405a-aee2-5bcbded54948
@bind a4 TextField(default="Antedeguemon 4")

# ╔═╡ db717a0b-847a-411e-97ba-ee9dad0a72f0
begin
	alns = [a1, a2, a3, a4]
	println(rand(alns))
end

# ╔═╡ 60708e1f-5256-48c5-a6d3-42fa704aa59c
md"""## Exercício 20
O mesmo professor do desafio 019 quer sortear a ordem de apresentação de trabalhos dos alunos. Faça um programa que leia o nome dos quatro alunos e mostre a ordem sorteada."""

# ╔═╡ 5f7d57a0-fff7-41e5-af78-04a3f6c9c889
@bind aluno1 TextField(default="Antedeguemon")

# ╔═╡ 8105682d-5e0a-4615-a001-9f0249ced22f
@bind aluno2 TextField(default="Antedeguemon 2")

# ╔═╡ 67a0e5c6-e177-4280-a312-f2ee32935173
@bind aluno3 TextField(default="Antedeguemon 3")

# ╔═╡ 4c50e4c6-fb6e-4d3d-b368-6f0414471bf8
@bind aluno4 TextField(default="Antedeguemon 4")

# ╔═╡ 7796aa0d-02e7-471a-bb5d-1ed1438138a8
begin
	alunos = [aluno1, aluno2, aluno3, aluno4]
	shuffle!(alunos)
	println("A ordem de apresentação será:")
	println(alunos)
end

# ╔═╡ a1c8ccbf-bc97-4bd0-874f-7df8a2eeea7b
md"""## Exercício 21
Faça um programa que abra e reproduza o áudio de um arquivo MP3.
(Ps.: Não faz sentido fazer isso num notebook Pluto, mas e daí?)"""

# ╔═╡ 86eb8089-4899-4565-995d-5c2c4f6e4fd2
begin #Não funciona kk
	audio_path = expanduser("miss.m4a")
    @htl("""
    <audio controls autoplay>
        <source src="$(audio_path)" type="audio/m4a">
    </audio>
    """)
end

# ╔═╡ 94a05f45-40e9-4f52-a5ab-b98d467f28a4
md"""## Exercício 22
Crie um programa que leia o nome completo de uma pessoa e mostre:
- O nome com todas as letras maiúsculas e minúsculas.
- Quantas letras ao todo (sem considerar espaços).
- Quantas letras tem o primeiro nome."""

# ╔═╡ 7c14a682-3647-417a-a6d3-9e0f93af0d32
@bind nome1 TextField(default="Antedeguemon Epaminondas Bob da Silva")

# ╔═╡ 3eec46c5-f29c-4f26-8017-79efb07a7731
begin
	# Eliminar mais de um espaço nos meios
	nome_split = join(split(nome1), " ")
	
	println("Analisando seu nome... $nome_split")
	println("Seu nome possui $(length(nome_split) - count(' ', nome_split))")
	println("Seu nome em maiúsculas é $(uppercase(nome_split))")
	println("Seu nome em minúsculas é $(lowercase(nome_split))")
	println("Seu primeiro nome é $(split(nome_split)[1]) e tem $(length(split(nome_split)[1])) letras")
end

# ╔═╡ 883873c5-c368-4062-b402-9f991c008bb9
md"""## Exercício 23
Faça um programa que leia um número de 0 a 9999 e mostre na tela cada um dos dígitos separados."""

# ╔═╡ ad61a624-91ce-4908-807e-6c146d1b9413
@bind zeroa9999 Slider(0 : 1 : 9999, show_value=true)

# ╔═╡ 193e3ef2-2e2a-4182-9a85-bd79cf68ab15
begin
	un = zeroa9999 ÷ 1 % 10
	# un = string(zeroa9999)[4]
	println("Unidades: $un")
	dz = zeroa9999 ÷ 10 % 10
	# dz = string(zeroa9999)[3]
	println("Dezenas: $dz")
	cn = zeroa9999 ÷ 100 % 10
	# cn = string(zeroa9999)[2]
	println("Centenas: $cn")
	ml = zeroa9999 ÷ 1000 % 10
	# ml = string(zeroa9999)[1]
	println("Milhares: $ml")
end

# ╔═╡ a47801c0-d6e3-44d3-862d-78f9c9b5e797
md"""## Exercício 24
Crie um programa que leia o nome de uma cidade diga se ela começa ou não com o nome "SANTO"."""

# ╔═╡ a98ff4f5-9513-4585-a76b-2d4e31063693
@bind cidade TextField(default="Raio Que o Parta")

# ╔═╡ 9445ae8b-c305-455b-bc44-5c34db3fabdf
println("$cidade começa com \"Santo\"?: $( startswith(lowercase(split(cidade)[1]), "santo") )")

# ╔═╡ 45d5f4b9-2166-4d87-a5d9-dd37fd041a74
md"""## Exercício 25
Crie um programa que leia o nome de uma pessoa e diga se ela tem "SILVA" no nome."""

# ╔═╡ 2409c92a-0936-459f-bf2e-af91c35cb1d3
@bind nome_completo TextField(default="Antedeguemon Epaminondas da Silva Bob")

# ╔═╡ 6ccc6b56-fb54-4de0-b2a3-f2fff06634f2
println("$nome_completo tem \"Silva\"?: $(occursin("silva", lowercase(nome_completo)))")

# ╔═╡ e4aa11ec-122f-4d9c-98db-8fee38933109
md"""## Exercício 26
Faça um programa que leia uma frase pelo teclado e mostre quantas vezes aparece a letra "A", em que posição ela aparece a primeira vez e em que posição ela aparece a última vez."""

# ╔═╡ 3c26fe37-ca71-481d-80da-29c52ce4b713
@bind frase TextField(default="Meu amigo Antedeguemon")

# ╔═╡ 2519ad15-63be-4082-a6fd-00b364553e19
begin
	# Eliminar espaços extras no meio
	frase_split = join(split(frase), " ")
	
	println("Frase: $frase_split")
	println("A letra A aparece $(count("a", lowercase(frase_split)))")
	println("A primeira letra A apareceu na posição $(findfirst('a', lowercase(frase_split)))")
	println("A última letra A apareceu na posição $(findlast('a', lowercase(frase_split)))")
end

# ╔═╡ e61cb836-6298-43a5-a7b4-c395df4a1b8f
md"""## Exercício 27
Faça um programa que leia o nome completo de uma pessoa, mostrando em seguida o primeiro e o último nome separadamente."""

# ╔═╡ aa10066d-2f97-410d-ac3c-5df167622402
@bind pessoa TextField(default="Antedeguemon Epaminondas Bob da Silva")

# ╔═╡ 1b8841ca-e1bf-4a4f-9525-60d3d280715b
begin
	# Eliminar espaços extras no meio
	pessoa_split = join(split(pessoa), ' ')

	primeiro_nome = split(pessoa_split)[1]
	ultimo_nome = split(pessoa_split)[length(split(pessoa_split))]
	
	println("Nome Completo: $pessoa_split")
	println("Primeiro Nome: $primeiro_nome")
	println("Último Nome: $ultimo_nome")
end

# ╔═╡ 0a4dc5a5-5404-4d68-84f8-1867e7d8baff
md"""## Exercício 28
Escreva um programa que faça o computador "pensar" em um número inteiro entre 0 e 5 e peça para o usuário tentar descobrir qual foi o número escolhido pelo computador. O programa deverá escrever na tela se o usuário venceu ou perdeu."""

# ╔═╡ e0686f83-be3c-4676-972d-bde718a1b523
begin
	rand(1:10)
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
Printf = "de0858da-6303-5e67-8744-51eddeeeb8d7"
Random = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[compat]
HypertextLiteral = "~1.0.0"
PlutoUI = "~0.7.83"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.6"
manifest_format = "2.0"
project_hash = "3af27d7eefb5819cc808f6347e3570a184f19075"

[[deps.AbstractPlutoDingetjes]]
git-tree-sha1 = "6c3913f4e9bdf6ba3c08041a446fb1332716cbc2"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.4.0"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.2"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"
version = "1.11.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "67e11ee83a43eb71ddc950302c53bf33f0690dfe"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.12.1"
weakdeps = ["StyledStrings"]

    [deps.ColorTypes.extensions]
    StyledStringsExt = "StyledStrings"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.3.0+1"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"
version = "1.11.0"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.7.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"
version = "1.11.0"

[[deps.FixedPointNumbers]]
deps = ["Random", "Statistics"]
git-tree-sha1 = "59af96b98217c6ef4ae0dfe065ac7c20831d1a84"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.6"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "d1a86724f81bcd184a38fd284ce183ec067d71a0"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "1.0.0"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "0ee181ec08df7d7c911901ea38baf16f755114dc"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "1.0.0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
version = "1.11.0"

[[deps.JuliaSyntaxHighlighting]]
deps = ["StyledStrings"]
uuid = "ac6e5ff7-fb65-4e79-a425-ec3bc9c03011"
version = "1.12.0"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "OpenSSL_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.15.0+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "OpenSSL_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.3+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"
version = "1.11.0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
version = "1.12.0"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"
version = "1.11.0"

[[deps.MIMEs]]
git-tree-sha1 = "c64d943587f7187e751162b3b84445bbbd79f691"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "1.1.0"

[[deps.Markdown]]
deps = ["Base64", "JuliaSyntaxHighlighting", "StyledStrings"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"
version = "1.11.0"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2025.11.4"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.3.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.29+0"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "3.5.4+0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Downloads", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "e189d0623e7ce9c37389bac17e80aac3b0302e75"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.83"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"
version = "1.11.0"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"
version = "1.11.0"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"
version = "1.11.0"

[[deps.Statistics]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "ae3bb1eb3bba077cd276bc5cfc337cc65c3075c0"
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.11.1"

    [deps.Statistics.extensions]
    SparseArraysExt = ["SparseArrays"]

    [deps.Statistics.weakdeps]
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.StyledStrings]]
uuid = "f489334b-da3d-4c2e-b8f0-e476e12c162b"
version = "1.11.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
version = "1.11.0"

[[deps.Tricks]]
git-tree-sha1 = "311349fd1c93a31f783f977a71e8b062a57d4101"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.13"

[[deps.URIs]]
git-tree-sha1 = "bef26fb046d031353ef97a82e3fdb6afe7f21b1a"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.6.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"
version = "1.11.0"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
version = "1.11.0"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.3.1+2"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.15.0+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.64.0+1"
"""

# ╔═╡ Cell order:
# ╠═858435bc-71d1-11f1-a682-a7922dda607a
# ╟─24941a8f-3275-4730-9bbe-2aa3610a7ea9
# ╟─71691cb0-ff0a-4a30-81b6-fee5df2be77d
# ╠═6116ee34-73c8-4da5-ba12-ba276fdf778d
# ╟─0b9dd805-e842-4784-a865-d50ca00f60c1
# ╠═6a982050-6c1c-475a-bbd0-e478780cad63
# ╠═4eea9b5f-3096-4e1b-add0-378304a2250a
# ╟─6cb3b3ff-5bdc-427d-97b9-7fe7823f30b0
# ╠═2e720dd5-cebd-4587-a602-b50aa137ba14
# ╠═273ad47a-74a2-4312-9f8e-a1ba99eed935
# ╠═e41ea332-7d38-4954-a886-0cff6af38dc7
# ╟─4059736c-191d-4efb-9a0a-25ede176660e
# ╠═5b640e50-80e6-4931-bb55-cef832d7be8e
# ╠═be22500b-8d93-48b3-824e-e2b2a51899ad
# ╟─49390a03-3b57-43ef-8214-c5b6ebef398c
# ╠═689b744f-e03f-4d35-9d30-c387491500b2
# ╠═21c82312-0be5-424f-937c-4cbe7ff5b205
# ╟─bb773483-0717-4d3a-890d-c7f4b54b65b9
# ╠═593b4d91-15f5-4556-840b-ba23b702ac1c
# ╠═52abe88d-2d93-4c11-88b8-5bcfe4e0f7f4
# ╟─cf76db91-a718-47bd-8f15-e7ade6efb95a
# ╠═4b6d118c-b39c-4a1c-8f25-87de24468a5f
# ╠═c3861202-e048-4e7f-aee4-9e39682bba81
# ╠═5a6e7ede-10f9-4fd4-aa67-a228f559c3b2
# ╟─cb836499-7231-41bb-babc-c3c4a65da6d9
# ╠═ba35f47e-a5c5-4f39-90cc-8cded7f5dbdb
# ╠═974a6745-411e-4c58-98bf-08258bb7d0a8
# ╠═f6f87090-2ec3-4432-ac1d-56558b28a657
# ╠═3b07763f-3388-4ddb-bbf7-83a3dfa5bfe1
# ╠═c620480e-ea75-46e6-b74d-aeaaf572101b
# ╠═2179a0c2-3e22-40fe-af17-d88eaef3589f
# ╠═ea844bf2-5563-4af5-b0cd-dbcc7b0e15a5
# ╠═01e7220f-77fd-4488-9df6-754cd5728fdd
# ╟─ae0664b3-e585-4ee6-bf10-b14761c180bc
# ╠═f4556d4b-fb89-41d0-8275-3326471d7dbe
# ╠═32226171-41dd-4694-ab40-2fa9013554c6
# ╠═c4aa2926-43db-4143-912c-de9692b92896
# ╟─acf2f464-7d4a-4949-ac2f-71ea1bd7c4bb
# ╠═949e2c16-5ca3-4b3c-ae3a-1dd27e712e53
# ╠═6495b666-7050-4ac7-93cd-e6bfa791dd03
# ╟─8961f80b-b84e-49a7-ad76-d91787c47470
# ╠═a2739d35-8cf8-4926-883b-d620f680213a
# ╠═0806798c-3a14-4054-a9ef-297c907a9b8f
# ╟─015f354b-5f16-43b8-ba9e-40991c787993
# ╠═596c1613-5b78-47f7-a8f6-58b10e52ccf5
# ╠═f3b3ba63-6dfd-4daa-8aff-48a19b46515c
# ╟─a91c5dbe-ea13-4044-9ce5-7822fe6be4b1
# ╠═46127de8-c6ce-4f2c-9550-ceea616e49c0
# ╠═a9eaaa20-9e78-424e-90d1-8daacfbe9beb
# ╠═858c5382-b065-4ead-ae65-408f14fadf63
# ╟─f88cec7e-0594-4e93-8051-97b9f1eb1453
# ╠═f8a2193e-775b-48af-b522-e541ef583d9b
# ╠═3e9c4fe6-7424-42e2-b884-e71d5d6e2266
# ╟─0e909120-aefb-4445-ac99-4c40207876a5
# ╠═ff66b45f-2d5c-4bb8-a84e-362ef9fdfeb5
# ╠═d7b77f0e-b5dc-442f-b699-774e5956738b
# ╠═28bbef28-43ea-42ca-8a55-f3bf767eb60d
# ╟─38f15a68-76e5-45c5-9796-065735ef27d7
# ╠═ba0dcb39-b579-4ac5-a0cf-8b4919f922cb
# ╠═5c193c28-e9af-4576-9364-fbae8ed2e9ea
# ╟─45816ffa-4de3-481e-b8da-71fba5f26239
# ╠═db820568-eb19-42ea-a86b-07823b1b2d43
# ╠═efec43cf-813d-4782-a0fc-3071b2c32296
# ╠═061d9d73-cfc2-44da-86a7-3ae85df6d41c
# ╠═79a16707-e58c-405a-aee2-5bcbded54948
# ╠═db717a0b-847a-411e-97ba-ee9dad0a72f0
# ╠═60708e1f-5256-48c5-a6d3-42fa704aa59c
# ╠═5f7d57a0-fff7-41e5-af78-04a3f6c9c889
# ╠═8105682d-5e0a-4615-a001-9f0249ced22f
# ╠═67a0e5c6-e177-4280-a312-f2ee32935173
# ╠═4c50e4c6-fb6e-4d3d-b368-6f0414471bf8
# ╠═7796aa0d-02e7-471a-bb5d-1ed1438138a8
# ╟─a1c8ccbf-bc97-4bd0-874f-7df8a2eeea7b
# ╠═86eb8089-4899-4565-995d-5c2c4f6e4fd2
# ╟─94a05f45-40e9-4f52-a5ab-b98d467f28a4
# ╠═7c14a682-3647-417a-a6d3-9e0f93af0d32
# ╠═3eec46c5-f29c-4f26-8017-79efb07a7731
# ╟─883873c5-c368-4062-b402-9f991c008bb9
# ╠═ad61a624-91ce-4908-807e-6c146d1b9413
# ╠═193e3ef2-2e2a-4182-9a85-bd79cf68ab15
# ╟─a47801c0-d6e3-44d3-862d-78f9c9b5e797
# ╠═a98ff4f5-9513-4585-a76b-2d4e31063693
# ╠═9445ae8b-c305-455b-bc44-5c34db3fabdf
# ╟─45d5f4b9-2166-4d87-a5d9-dd37fd041a74
# ╠═2409c92a-0936-459f-bf2e-af91c35cb1d3
# ╠═6ccc6b56-fb54-4de0-b2a3-f2fff06634f2
# ╟─e4aa11ec-122f-4d9c-98db-8fee38933109
# ╠═3c26fe37-ca71-481d-80da-29c52ce4b713
# ╠═2519ad15-63be-4082-a6fd-00b364553e19
# ╟─e61cb836-6298-43a5-a7b4-c395df4a1b8f
# ╠═aa10066d-2f97-410d-ac3c-5df167622402
# ╠═1b8841ca-e1bf-4a4f-9525-60d3d280715b
# ╟─0a4dc5a5-5404-4d68-84f8-1867e7d8baff
# ╠═e0686f83-be3c-4676-972d-bde718a1b523
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
