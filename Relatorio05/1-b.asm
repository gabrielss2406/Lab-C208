.data
b: .space 980  # Espa�o para 10 word (245 * 4 bytes cada)

.text
  li $t0,3 # a
  li $t1,5 # c
  
  la $t2, b # endere�o de b
  
  add $t3, $t0, $t1
  sw $t3, 980($t2)