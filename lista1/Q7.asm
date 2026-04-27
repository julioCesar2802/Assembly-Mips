Faça um programa que leia um número entre 0 e 9999 e imprima cada algarismo em
uma linha diferente.
Ex.: 3219 imprime
9
1
2
3
Ex.: 123
3
2
1
0

.text
main:	
    addi $2,$0,5 # Seleciono o serviço de Ler um inteiro
	syscall # Executo esse serviço
	add $8,$0,$2 # armazeno esse número no $8
	addi $9,$0,10 #armazeno o número 10 no $9
	
	# Quarto algarismo
	div $8,$9 # divido o número digitado por 10
	mfhi $10 #armazeno o resto do número em $10
	mflo $11 #Pego o quociente da divisão e armazeno em $10
	
	# Terceiro algarismo
	div $11,$9 # Pego o quociente da primeira divisão e divido por 10
	mfhi $12 # armazeno o resto da divisão em $12
	mflo $13 # armazeno o quociente da divisão em $13
	
	# Segundo algarismo
	div $13,$9 # Divido o quociente da segunda divisão por 10 novamento
	mfhi $14 # armazeno o resto da divisão em $14
	mflo $15 # armazeno o quociente da divisão em $15
	
	# Primeiro algarismo
	div $15,$9 # divido o quociente da terceira divisão por 10 
	mfhi $16 # armazeno o resto da divisão em $16
	
	# Saida do primeiro resto
	
	add $4,$0,$10 # armazeno o resultado da primeira divisão em $4
	addi $2,$0, 1 # Seleciono o serviço de imprimir número 
	syscall # executo o serviço de impressão
	
	# Quebra primeira linha
	addi $4,$0,'\n' # armazeno o caractere de pular linha no $4 para que eu possa solicitar o serviço de impressão posteriormente
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo essa chamada
	
	# saida do segundo resto
	add $4,$0,$12 # armazeno o segundo no $4
	addi $2,$0,1 # seleciono o serviço de imprimir inteiro
	syscall # faço a execucação desse serviço
	
	# Quebra da segunda linha
	addi $4,$0,'\n' # armazeno o caractere de pular linha no $4 para que eu possa solicitar o serviço de impressão posteriormente
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo essa chamada
	
	# Saida do terceiro resto
	add $4,$0,$14 # armazeno o terceiro no $4
	addi $2,$0,1 # seleciono o serviço de imprimir inteiro
	syscall # faço a execucação desse serviço
	
	# Quebra da terceira linha
	addi $4,$0,'\n' # armazeno o caractere de pular linha no $4 para que eu possa solicitar o serviço de impressão posteriormente
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo essa chamada
	
	# Saida do quarto resto
	add $4,$0,$16 # armazeno o quarto resto no $4
	addi $2,$0,1 # seleciono o serviço de imprimir inteiro
	syscall # faço a execucação desse serviço
	  
	# Fim de código
	addi $2,$0,10 # seleciono o serviço de fim de código
	syscall # faço a execução desse serviço
	