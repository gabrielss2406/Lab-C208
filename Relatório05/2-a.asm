.data
b: .space 60  # Espa�o para 15 word (15 * 4 bytes cada)

.text
  li $t1,-2 # c
  
  la $t2, b # endere�o de b
  lw $t2, 60($t2) # valor b[15]
  
  sub $t3, $t2, $t1 # $t3 = a
