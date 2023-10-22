.data
a: .space 20  # Espaço para 5 word (5 * 4 bytes cada)
c: .space 12  # Espaço para 3 word (3 * 4 bytes cada)

.text 
  la $t1, a # endereço de a
  lw $t1, 20($t1) # valor a[5]
  
  la $t2, c # endereço de c
  lw $t2, 12($t2) # valor c[3]
  
  add $t3, $t1, $t2 # $t3 = b
