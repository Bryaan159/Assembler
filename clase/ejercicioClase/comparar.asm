MOV BH, 4         ; Cargar el valor del dato1 en el registro BH
MOV AL, 3         ; Cargar el valor del dato2 en el registro AL
ADD BH, AL        ; Sumar los valores de dato1 y dato2

CMP BH, 20        ; Comparar el resultado con 20
JL Subrutina      ; Saltar a la subrutina si es menor a 20

MOV [0210h], BH   ; Mover el resultado a la dirección de memoria 210h
MOV [0220h], "F"  ; Mover el carácter "F" a la dirección de memoria 220h
JMP Fin           ; Saltar al final del programa

Subrutina:
ADD BH, 5         ; Sumar 5 al resultado

CMP BH, 20        ; Comparar el resultado con 20 nuevamente
JL Subrutina      ; Volver a la subrutina si es menor a 20

MOV [0210h], BH   ; Mover el resultado a la dirección de memoria 210h
MOV [0220h], "F"  ; Mover el carácter "F" a la dirección de memoria 220h

Fin:
