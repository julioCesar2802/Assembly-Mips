# Escreva um programa para ler dois números inteiros e mostrar na tela o maior deles,
# bem como a diferença entre eles (a diferença é sempre um valor positivo)

.text
main:
	addi $2,$0,5 # seleciono o serviço de ler inteiro
	syscall # executo esse serviço
	add $8,$0,$2 # armazeno o valor lido no $8
	
	addi $2,$0,5 # seleciono o servio de ler inteiro
	syscall # executo esse serviço
	add $9,$0,$2 # armazeno no $9 o segundo valorr digitado
	
	slt $10,$8,$9 # se ($8<$9) $10=1,se não $10=0
	
	beq $10,$0,maior # verifico se $8 é o maior
	
	add $4,$0,$9 # armazeno no $9 o maior número,se o BEQ for False
	addi $2,$0, 1 # imprimo o inteiro
	syscall # executo esse serviço
	
	add $4,$0,'\n' # armazeno no $4 a função de pular linha
	add $2,$0,11 # seleciono o serviço de pular caractere
	syscall # executo esse serviço
	
	sub $12,$9,$8 # faço a subtração de $9-$8
	add $4,$0,$12 # armazeno o resultado da subtração no $4 para que ele possa ser impresso
	addi $2,$0,1 # seleciono o serviço de imprimir inteiro
	syscall # executo esse serviço
	
	j fim
	
maior:	add $4,$0,$8 # armazeno no $4 o maior
	addi $2,$0,1 # seleciono o serviço de imprimir inteiro
	syscall # executo esse serviço
	
	add $4,$0,'\n' # armazeno no $4 a função de pular linha
	add $2,$0,11 # seleciono o serviço de pular caractere
	syscall # executo esse serviço
	
	sub $12,$8,$9 # faço a subtração do maior que é $8,se caso for true menos o $9	
	add $4,$0,$12 # armazeno no $4 a subtração  
	addi $2,$0,1 # seleciono o serviço de imprimir inteiro
	syscall # executo esse serviço
	

	
fim:    addi $2,$0,10 # seleciono o serviço de de fim de código
	syscall # executo esse serviço	