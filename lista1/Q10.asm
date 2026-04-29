# Faça um programa que leia um caractere minúsculo e imprima o seu equivalente
# maiúsculo.

.text
main:
	addi $2,$0,12 # seleciono o serviço de ler caractere
	syscall # executo esse serviço
	add $8,$0,$2 # armazeno no $8 o caractere digitado pelo usuário
	
	# transformar um caractere minusculo em maisculo
	addi $9,$0,32 # armazeno no $9 o valor 32,pois quando vemos na tabela ASCII,o valor em decimal de um caractere minusculo para transformar em maiusculo,é necessário subtrair de 32
	sub $10,$8,$9 # armazeno no $10 o valor da subtração do $8 com o $9
	
	addi $4,$0,' ' # armazeno n $4 o espace
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço
	
	addi $4,$0,'>' # armazeno no $4 o caractere '>'
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço
	
	addi $4,$0,' ' # armazeno n $4 o espace
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço
	
	# Saida de dados
	add $4,$0,$10 # armazeno o valor encontrado no $4
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço
	
	addi $2,$0,10 # seleciono o serviço de fim de código
	syscall # esecuto esse serviço
	