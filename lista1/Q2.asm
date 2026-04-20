# Faça um programa para ler um número inteiro e imprimir o quadrado desse número.

.text
main:	addi $2,$0,5 #seleciono a chamada pra ler um inteiro
	syscall # faço a solicitação pro usuário digitar o valor
	add $8,$0,$2 # armazeno no registrador $8 o valor contido em $2
	add $9,$0,$8 # armazeno o mesmo número do $8 no $9 
	mul $10,$8,$9 # armazeno o valor da multiplicação do registrador $8 e $9 no $10
	add $4,$0,$10 # armazeno o resultado no $4 para que o resultado possa ser observado
	addi $2,$0, 1 # Seleciono o serviÃ§o de imprimir o resultado
	syscall #faço a solicitação desse serviço
	addi $2,$0,10 #seleciono o serviço de Fim de código	
	syscall #faço a solicitação desse serviço
