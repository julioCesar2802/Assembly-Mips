# Faça um programa para ler duas notas de um aluno do IFRN em um curso semestral.
# Esse programa deverá apresentar a média desse aluno, após as duas provas.

.text
main:	
    addi $2,$0,5 # seleciono o servio de ler um inteiro	
	syscall # faço a solicitação desse serviço
	add $7,$0,$2 # armazeno o número lido no $2
	addi $2,$0,5 # seleciono novamento o serviço de ler um inteiro
	syscall # faço a solicitaçao desse serviço
	add $8,$0,$2 # armazeno o número lido no $8
	addi $9,$0,2 # armazeno o número 2 no $9
	
	#Operação
	add $10,$7,$8 #armazeno a soma de $7 e $8 no $10
	div $10,$9 # faço a divisão dos números contidos em $10 e $9 
	mflo $11 # Retiro o quociente armazenado em Lo e armazeno agora em $11
	add $4,$0,$11 # armazeno o resultado da divisão que está em $11 e coloco em $4,para que ele possa ser impresso
	addi $2,$0,1 #seleciono o serviço de imprimir inteiro
	syscall #faço a solicitação desse serviço
	addi $2,$0,10 # Seleciono o serviço de fim de execução
	syscall #Faço a solicitação desse serviço