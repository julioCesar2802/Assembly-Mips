# Faça um programa para ler dois números e informe qual deles é o maior.

.text
main: addi $2, $0, 5 # seleciono o seviço de ler inteiro
      syscall # executo esse serviço
      add $8, $0, $2 # armazeno no $8 o número digitado
      addi $2, $0, 5 # faço novamente a seleção do serviço de ler inteiro
      syscall # executo esse serviço
      add $9, $0, $2 # armazeno no $9 o novo valor digitado
     
      slt $10, $8, $9 # se ($8<$9)$10=1 senao $10=0
     
      beq $10, $0, menor9 # verifica se ele é menor ou maior,de acordo com o slt
      add $4, $0, $8 # se $9 não for menor que $8,ele vai imprimir o $8
      j imp # pula para o seviço de imprimir código
menor9: add $4, $0, $9 # se caso o bew for TRUE,ele vai imprimir o $9 como o menor número     

imp:  addi $2, $0, 1 # seleciona o seviço de imprimir código
      syscall # executa esse serviço
     
     
fim:  addi $2, $0, 10 # seleciona o serviço de fim de código
      syscall # executa esse serviço