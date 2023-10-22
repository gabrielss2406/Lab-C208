.data
a: .space 84  # Espaço para 21 word (21 * 4 bytes cada)

.text
  li $t1,5 # b
  
  la $t2, b # endereço de a
  lw $t2, 84($t2) # valor a[21]
  
  sub $t3, $t1, $t2 # $t3 = c
