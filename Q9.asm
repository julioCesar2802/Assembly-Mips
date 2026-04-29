# Faça um programa que leia um número inteiro, representando a duração em segundos
# de um experimento científico e imprima o tempo decorrido nesse experimento no
# formato h:m:s.
# Exemplo: 3755 gera uma saída 1:2:35

.text
main:
	addi $2,$0,5 # serviço de ler um inteiro
	syscall # Executo esse serviço
	add $8,$0,$2 # armazeno no $8 o valor digitado pelo usuário
	addi $15,$0,3600 # armazeno no $15 o valor 3600
	addi $16,$0,60 # armazeno no $16 o valor 60
	
	#calculo horas
	div $8,$15 # calculo para descobrir a hora
	mflo $9 # armazeno a hora descoberta no $9
	
	# calculo minutos
	mfhi $10 # pego o resto da divisão anterior e armazeno no $10
	div $10,$16 # divido o resto dos segundos por 60 para desccbrir o tempo em minutos
	mflo $11 # armazeno os minutos descobertos no $11
	
	# Segundos
	mfhi $12 # pego o resto da divisão dos minutos que já e dá temo em segundos
	
	# Saida do código
	add $4,$0,$9 # armazeno no $4 o valor descoberto em horas
	addi $2,$0,1 # seleciono o serviço de imprimir código
	syscall # executo esse código
	
	# ESPACE
	addi $4,$0,' ' # armazeno no $4 o espaço
	addi $2,$0,11 # seleciono o serviço de impressao de caractere
	syscall # executo esse serviço
	
	# :
	addi $4,$0,':' # armazeno no $4 os 2 pontos
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # esecuto esse serviço
	
	# ESPACE
	addi $4,$0,' ' # armazeno no $4 o espaço
	addi $2,$0,11 # seleciono o serviço de impressao de caractere
	syscall # executo esse serviço
	
	# tempo em minutos
	add $4,$0,$11 # armazeno no $4 o valor descoberto em horas
	addi $2,$0,1 # seleciono o serviço de imprimir código
	syscall # executo esse código	
	
	# ESPACE
	addi $4,$0,' ' # armazeno no $4 o espaço
	addi $2,$0,11 # seleciono o serviço de impressao de caractere
	syscall # executo esse serviço
	
	# :
	addi $4,$0,':' # armazeno no $4 os 2 pontos
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # esecuto esse serviço
	
	# ESPACE
	addi $4,$0,' ' # armazeno no $4 o espaço
	addi $2,$0,11 # seleciono o serviço de impressao de caractere
	syscall # executo esse serviço
	
	# saida em segundos
	add $4,$0,$12 # armazeno no $4 o valor descoberto em horas
	addi $2,$0,1 # seleciono o serviço de imprimir código
	syscall # executo esse código
	
	# Fim de código
	addi $2,$0,10 # seleciono o serviço de fim de código
	syscall # executo esse serviço							