.data
c: .space 0 # Espa�o para 1 word (1 * 4 bytes cada)

.text
  li $t0,5 # b
  li $t1,3 # a
  
  la $t2, c # endere�o de c
  
  sub $t3, $t0, $t1
  sw $t3, 0($t2)