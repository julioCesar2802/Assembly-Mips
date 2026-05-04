# Faça um programa que leia a idade (em anos) e o tempo de serviço de um trabalhador.
# Informe se ele pode se aposentar (imprima S se sim, e N se não). As condições para
# aposentadoria são: 1) ter, ao menos, 65 anos; OU 2) ter trabalhado 40 anos; OU ter
# pelo menos 60 anos e mais de 35 anos.

.text       # CÓDIGO IMCOMPLETO
main:
	addi $2,$0,5 # seleciono o serviço de ler inteiro (idade em anos)
	syscall # executo esse serviço
	add $8,$0,$2 # armazeno no $8 o valor digitado
	
	addi $2,$0,5 # seleciono o serviço de ler inteiro
	syscall # executo esse serviço
	add $9,$0,$2 # armazeno no $9 o segundo valor digitado (tempo de serviço)
	
	addi $10,$0,65 # armazeno no $10 o valor correspondente a idade mínima pra se aposentar
	addi $12,$0,40 # armazeno no $12 o valor correspondente ao tempo mínimo de trabalho pra se aposentar
		
	slt $11,$8,$10 # Se ($8<$10) $11 = 1, $12 = 0
	
	beq $8,$0,maior # se a idade digitada for maior que 65,vai pro alvo (maior)
	
	slt $13,$9,$12 # Se ($9 < $12) $13=1, Se não $13=0
	
	beq $13,$0,maior1 # Verifico se o tempo de trabalho digitado é maior que o tempo mínimo,vai pro alvo (maior1)
	
	# --- Nova Verificação: Idade >= 60 E Serviço > 35 ---
    	addi $14, $0, 60    # Carrega 60 para comparação
    	slt  $15, $8, $14   # $15 = 1 se idade < 60
    	bne  $15, $0, reprovado # Se idade < 60, não cumpre esta regra, vai para o 'N'

    	addi $16, $0, 35    # Carrega 35 para comparação
    	slt  $17, $16, $9   # $17 = 1 se 35 < serviço (ou seja, serviço > 35)
    	bne  $17, $0, maior # Se serviço > 35, cumpre a regra, vai para o 'S'

reprovado:
    	addi $4,$0,78 # armazeno no $4 o valor '78' que equivale ao 'N' na tabela ASCII
	add $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço
	j saida
	
maior:	addi $4,$0,83 # armazeno no $4 o valor do 'S',de acordo com a tabela ASCII
	add $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço
	j saida

maior1: addi $4,$0,83 # armazeno no $4 o valor do 'S',de acordo com a tabela ASCII
	add $2,$0,11 # seleciono o serviço de imprimir caractere
	syscall # executo esse serviço
	
saida:  addi $2,$0,10 # seleciono o serviço de fim de código
	syscall # executo esse serviço