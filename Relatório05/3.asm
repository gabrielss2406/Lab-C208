.data
a: .word 4,5

.text
li $t1,0 # int j = 0

la $t2, a # endereço de a
lw $t3, 0($t2) # a[0]

blt $t3,5, IF
j ELSE

IF:
add $t2,$t1,2
j EXIT

ELSE:
lw $t4, 4($t2) # a[1]
add $t1,$t4,10
j EXIT

EXIT: