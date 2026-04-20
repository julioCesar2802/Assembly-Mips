# Faça um programa para ler um número inteiro e imprimir o dobro desse número.

.text
main:	addi $2,$0,5
	syscall
	add $8,$0,$2
	add $9,$0,$8
	add $10,$8,$9
	add $4,$0,$10
	addi $2,$0,1
	syscall
	addi $2,$0,10
	syscall
	


