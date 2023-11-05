.data
msg: .asciiz "Forneça um numero decimal: "
dez: .float 10.0

zero: .double 0.0

.text

# READ - INT
li $v0,5
syscall
move $s2,$v0 # le e ja salva

# PRÉ STRING
li $v0,4
la $a0,msg
syscall
# READ - FLOAT
li $v0,6
syscall
# CALCULO (+10) E SAIDA - FLOAT
lwc1 $f1,dez
add.s $f12, $f1, $f0
li $v0,2
syscall

li $v0,4
la $a0,msg
syscall
# READ - DOUBLE
li $v0,7
syscall
# CALCULO (+10) E SAIDA - DOUBLE
lwc1 $f2,zero
add.s $f12, $f2, $f0
li $v0,3
syscall