.data
a: .space 40  # Espa�o para 10 word (10 * 4 bytes cada)

.text
  li $t0,5 # b
  li $t1,3 # c
  
  la $t2, a # endere�o de a
  
  sub $t3, $t0, $t1
  sw $t3, 40($t2)
