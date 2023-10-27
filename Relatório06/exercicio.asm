.data
N: .word
mensagem1: .asciiz "Insira o valor de N: "
mensagem2: .ascii "A diferença será de: "

.text
  # Solicitar valor de N
  li $v0, 4
  la $a0, mensagem1
  syscall

  # Ler N
  li $v0, 5
  syscall
  sw $v0, N  # Armazenar o valor em N

  lw $t0, N  # Carregar o valor de N em $t0
  addi $t0, $t0, 1    # $t1++
  li $t1, 1  # iterador 1 -> N
  li $t2, 0  # soma
  li $t3, 0  # soma dos quadrados

LOOP:
  # Soma
  add $t2, $t2, $t1 # $t2 += $t1

  # Quadrado e soma dos quadrados
  mul $t4, $t1, $t1   # $t4 = $t1 * $t1
  add $t3, $t3, $t4   # $t3 += $t4

  # Parada
  addi $t1, $t1, 1    # $t1++
  beq $t1, $t0, EXIT  # if($t1==N) termina o loop
  j LOOP

EXIT:
  # Quadrado da soma
  mul $t2, $t2, $t2 # $t2 = $t2*$t2

  # Diferença
  sub $t5, $t2, $t3 # $t5 = $t2 - $t3

  # Imprimindo diferença
  li $v0, 4
  la $a0, mensagem2
  syscall 
  li $v0, 1
  move $a0, $t5
  syscall 