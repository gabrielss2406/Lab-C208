.text
li $t0, 10 # Inicializa 'i' com o valor de 10
li $t1, 0 # Inicializa 'cont' com o valor de 0

WHILE: bgt $t0,0,LOOP
j EXIT
LOOP:
  add $t1, $t1, 5
  sub $t0, $t0, 2
  j WHILE
EXIT: