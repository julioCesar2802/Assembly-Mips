# Faça um programa para ler um número inteiro. Se o número for positivo, imprima o
# dobro do número, se for negativo, imprima o quadrado do número.

.text
main:
	addi $2,$0,5 # seleciono o serviço de ler inteiro
	syscall # Executo esse serviço
	add $8,$0,$2 # armazeno no $8 o valor digitado
	
	slt $10,$8,$0 # se ($8 < 0) $10=1, se não $10=0
	
	beq $10,$0,maior # verifico se o número é maior que zero
	mul $4,$8,$8
	j saida
	

maior:  mul $11,$8,2 # se for positivo,multiplica por 2
	add $4,$0,$11 # armazeno no $4 o dobro do valor digitado,se for positivo
	
saida:  addi $2,$0,1 # seleciono o serviço de fim de código
	syscall # executo esse serviço
	
fim:    addi $2,$0,10 # seleciono o serviço de fim de código
	syscall # executo esse serviço