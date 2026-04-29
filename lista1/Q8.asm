# Faça um programa que leia três números inteiros, representando a duração em horas,
# minutos e segundos de um experimento científico e informe essa duração em
# segundos.

.text
main:	
	# Ler o primeiro inteiro como HORAS
	addi $2,$0,5 # seleciono o serviço de Ler inteiro
	syscall # faço a execução desse código
	add $8,$0,$2 # armazeno o número lido no $8
	
	# Ler o segundo inteiro como MINUTOS
	addi $2,$0,5 # seleciono o serviço de ler inteiro para ler o novo número digitado
	syscall # faço a execução desse serviço
	add $9,$0,$2 # armazeno o segundo número digitado no $9
	
	# Ler o terceiro inteiro como SEGUNDOS
	addi $2,$0,5 # seleciono o serviço de ler inteiro
	syscall # faço a execução desse serviço
	add $10,$0,$2 # armazeno o terceiro valor digitado no $10
	
	# Multiplicação do primeiro inteiro por 3600
	mul $11,$8, 3600 # faço a multiplicação do primeiro inteiro por 600 pra transformar em segundos

	
	# Multiplicação do segundo inteiro por 60
	mul $12,$9,60 # faço a multiplicação do segundo inteiro por 60 pra descobrir o tempo em segundos
	add $13,$11,$12 # armazeno no $13 a soma do primeiro e segundo número que estavam em horas e minutos
	add $14,$13,$10 # somo o resultado da conta anterior com o terceiro número lido que esta em segundos e armazeno em $14

	# armazenar o resultado no $4
	add $4,$0,$14 # armazeno o resultado total em $4
	addi $2,$0,1 # Seleciono o serviço de imprimir inteiro
	syscall # executo esse serviço
	
	
	
	
	  
	
	
	