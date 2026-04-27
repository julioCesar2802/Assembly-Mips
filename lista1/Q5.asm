# Faça um programa que leia um número inteiro entre 0 e 999 e imprima a soma dos
# algarismos desse número. Ex.: 358 gera uma saída de 16, pois 3+5+8 = 16

.text
main:	
    addi $2,$0,5 #seleciono o serviço para ler um número inteiro
	syscall # execução desse serviço
	
    add $8, $0,$2 #armazeno o número digitado no $8
	addi $9,$0,10 #coloco o valor 10 no $9
	div $8,$9 # divido o número lido por 10
	mfhi $10 #armazeno o resto da divisão no $10
	mflo $11 #pego o quociente da divisão e armazeno no $11
	div $11,$9 # divido o quociente da divisão anterior por 10
	mfhi $12 #pego o resto da divisão por 10 e armazena em $12
	mflo $13 #Pega o quociente da divisão e armazena no $13
	add $16,$10,$12 # pego o resto da primeira divisão e somo com o resto da segunda divisão
	add $17,$16,$13 #pego a soma dos 2 restos e somo com o quociente da segunda divisão 
	add $4,$0,$17 # armazeno o resultado dessas soma no $4 para que ele possa aparecer na tela posteriormente
	addi $2,$0,1 # Seleciono o serviço de imprimir inteiro
	syscall # Executo o serviço de imprimir inteiro
	
    addi $2,$0, 10 #Seleciono o serviço de fim de execução
	syscall #executo o serviço de fim de execução