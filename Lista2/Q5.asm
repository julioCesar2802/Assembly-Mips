# Faça um programa que receba três notas (entre 0 e 100) e calcule a média ponderada
# dessas notas com pesos 1, 2 e 3. Informe a média e se o aluno foi aprovado, escreva
# após a média o a letra A. Caso o aluno seja reprovado, informe, após a média, a letra R.
# A média para aprovação é 60.

.text
main:	
	addi $2,$0,5 # seleciono o serviço de er inteiro
	syscall # executo esse serviço
	add $8,$0,$2 # armazeno o número no $8
	
	addi $2,$0,5 # seleciono o serviço de er inteiro
	syscall # executo esse serviço
	add $9,$0,$2 # armazeno o número no $9
	
	addi $2,$0,5 # seleciono o serviço de ler inteiro
	syscall # executo esse serviço
	add $10,$0,$2 # armazeno o número no $10
	
	addi $25,$0,6 # armazeno no $25 o valor 6 que corresponde a soma dos pesos
	# armazenei no $25,pois durante a criação do código deu erro,dai me veio esse registrador na mente kkkkkkkkk
	
	mul $11,$9,2 # armazeno no $11 a multiplicação da segunda nota por 2
	mul $12,$10,3 # armazeno no $12 a multiplicação da terceira nota por 3
	
	add $13,$8,$11 # armazeno no $13 a soma da primeira nota com a segunda
	add $14,$13,$12 # armazeno no $14 a soma das 3 notas
	div $15,$14,$25 # Divido a soma total pela soma dos pesos
	
	
	addi $16,$0,60 # armazeno no $16 o valor da média
	
	slt $17,$15,$16 # Se ($15<$16) $17 = 1, Se não $17 = 0
	
	beq $17,$0,maior # comparo a média obtida com a média minima pra ser aprovado
	
	 add $4,$15,$0 # armazeno no $4 a média obtida
	addi $2,$0,1 # seleciono o seviço de imprimir inteiro
	syscall # executo esse serviço
	
	addi $4,$0,' ' # armazeo no $4 o caractere de dar espaço
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço	
	
	addi $4,$0,82 # armazeo no $4 o valor da letra "R" de acordo com a tabela ASCII
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço	
	
	j saida
	
	
maior:  add $4,$15,$0 # armazeno no $4 a média obtida
	addi $2,$0,1 # seleciono o seviço de imprimir inteiro
	syscall # executo esse serviço
	
	addi $4,$0,' ' # armazeo no $4 o caractere de dar espaço
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço	
	
	addi $4,$0,65 # armazeo no $4 o valor da letra "A" de acordo com a tabela ASCII
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço	
	
saida:  addi $2,$0,10 # seleciono o serviço de fim de código
	syscall # executo esse serviço
	
	
	