# Faça um programa que leia dois números e escreva a relação de grandeza entre eles.
# Ex. 345 e 23 gera a saída 345>23. Ex.: 24 e 38 gera a saída 24<38. Ex.: 12 e 12 gera a
# saída 12=12

.text
main:   addi $2,$0,5 # seleciono o serviço de ler inteiro
	syscall # executo esse serviço
	add $8,$0,$2 # armazeno no $8 o valor digitado
	
	addi $2,$0,5 # seleciono o serviço de ler inteiro
	syscall # executo esse serviço
	add $9,$0,$2 # armazeno o valor digitado no $9
	
	beq $8,$9, iguais
	
	slt $10,$8,$9 # Se ($8<$9) $10=1, Se Não $10=0
	
	beq $10,$0,maior9
	
	
	add $4,$0,$8 # armazeno no $4 o menor valor
	addi $2,$0,1 # seleciono o serviço de imprimir inteiro
	syscall # seleciono o serviço de imprimir
	
	add $4,$0,'<' # armazeno no $4 o caractere '<"
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço
	
	add $4,$0,$9 # armazeno no $4 o maior valor
	addi $2,$0,1 # seleciono o serviço de imprimir inteiro
	syscall # executo esse serviço
	
	j saida
	
maior9: add $4,$0,$8 # armazeno no $4 o maior valor,se Beq for True
	addi $2,$0,1 # seleciono o serviço de imprimir inteiro
	syscall # seleciono o serviço de imprimir
	
	add $4,$0,'>' # armazeno no $4 o caractere '>"
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço
	
	add $4,$0,$9 # armazeno no $4 o menor valor
	addi $2,$0,1 # seleciono o serviço de imprimir inteiro
	syscall # executo esse serviço
	
	j saida
	
iguais: add $4,$0,$8 # armazeno no $4 o primeiro valor
	addi $2,$0,1 # seleciono o serviço de imprimir inteiro
	syscall # seleciono o serviço de imprimir
	
	add $4,$0,'=' # armazeno no $4 o caractere '="
	addi $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço
	
	add $4,$0,$9 # armazeno no $4 o segundo valor
	addi $2,$0,1 # seleciono o serviço de imprimir inteiro
	syscall # executo esse serviço
	
saida:  addi $2,$0,10 # seleciono o serviço de fim de código
	syscall # executo esse serviço