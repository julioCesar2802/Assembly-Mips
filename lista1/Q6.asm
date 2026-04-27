# Faça um programa que leia um número inteiro entre 0 e 999 e imprima esse número
# com 3 algarismos. Ex.: 23 gera uma saída 023. 8 gera uma saída 008.

.text
main:	
    addi $2,$0,5 #solicito o serviço de ler um inteiro
	syscall #executo esse serviço
	add $8,$0,$2, #armazeno o valor registrador do $2 para o $8
	addi $9,$0,10 # armazeno o valor 10 em $9
	
	# Primeira divisão
	div $8,$9 # faço a divisão do número lido por 10 
	mfhi $10 # Pego o resto da divisão anterior e armazeno no $10
	mflo $11 # Pego o quociente da divisão e armazeno em $11
	
	# Segunda divisão
	div $11 $9 # Divido o quociente por 10
	mfhi $12 # Pego o resto da divisão e armazeno em $12
	mflo $13 # Pego o quociente da divisão e armazeno em $13
	
	# Terceira Divisão
	div $13,$9 # divido o novo quociente por 10
	mfhi $14 # Pego o resto da divisão e armazeno em $14
	
	#Saida do código
	add $4,$0,$14 # armazeno o último resto no $4 para que ele possa ser impresso
	addi $2,$0,1 # faço a seleção do serviço de impressão de número
	syscall # Faço a execução desse serviço
	
	add $4,$0,$12 # armazeno o resto da segunda divisão em $4 para que ele possa ser impresso
	addi $2,$0,1 # Seleciono o serviço de impressão de número
	syscall # Faço a execução desse serviço
	
	add $4,$0,$10 # armazeno o resto da primeira divisão em $4 para que ele possa ser impresso
	addi $2,$0,1 # seleciono o serviço de impressão de número
	syscall # faço a execução desse serviço
	
	addi $2,$0,10 # seleciono o serviço de fim de código
	syscall # Executo esse serviço