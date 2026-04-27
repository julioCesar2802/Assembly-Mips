# Faça um programa para ler dois números inteiros e imprimir a multiplicação desses
# dois números

.text
main:
	addi $2,$0,5 #seleciono o serviço de Ler um número
	syscall #faço a solicitação desse serviço
	
    add $7,$0 ,$2 #armazeno o número contido no $2 no $7
	addi $2,$0,5 #seleciono novamento outro número
	syscall #faço a solicitação desse serviço
	
    add $8,$0,$2 #armazeno no $8 o novo valor contido no $2
	mul $9 ,$8,$7 #faço a multiplicação dos números dos $7 e $8 e armazeno o resultado no $9
	add $4,$0,$9 #armazeno o resultado da multiplicação no $4 para que ele possa ser mostrado na tela quando eu selecionar o serviço de imprimir um número
	addi $2, $0,1 #seleciono o serviço de imprimir inteiro
	syscall # faço a chamada desse serviço
	
    addi $2,$0,10 # seleciono o serviço de fim de execução do código
	syscall #faço a chamada desse serviço