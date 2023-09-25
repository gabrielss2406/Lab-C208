.text
li $s0, 10    # Valor inicial de 'a'
li $s1, 20    # Valor inicial de 'b'
li $s2, 30    # Valor inicial de 'c'

move $t0, $s0 # Inicializa 'a' com o valor de $s0
move $t1, $s1 # Inicializa 'b' com o valor de $s1
move $t2, $s2 # Inicializa 'c' com o valor de $s2

ble $t0, $t1, Else  # Se 'a' <= 'b', vá para a etiqueta 'Else'
sub $t2, $t0, $t1  # c = a - b
add $t0, $t1, $t2  # a = b + c
j Exit             # Pula para o final

Else:
sub $t1, $t0, $t2  # b = a - c
add $t2, $t1, $t2  # c = b + c

Exit:
# O programa termina aqui
