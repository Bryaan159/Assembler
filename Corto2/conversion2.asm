    org 100h

    section .text

    xor AX, AX
    mov byte[210h], 9d
    mov byte[220h], 4d

    mov AL, [210h]
    mov BL, [220h]

    add AL, BL
    cmp AL, 10
    JB bucleSuma

; Si el resultado es mayor que 10 se convierte de Lb a Kg
    ; buscar manera de trabajar con numeros decimales
    mov Bl, 45d ;0.45
    mul BL
    mov byte[200h], AH

    int 20h


; funciones
bucleSuma:
; Si es mayor a 20 se convierte de Kg a Lb
    add AL, 2d
    cmp AL, 20
    JBE bucleSuma
    JAE conversion
    ret

; funcion de conversion
conversion:
; Buscar manera de operar con numeros decimales
    MOV AH, AL
    MOV AL, 22d
    MUL AH
    MOV BL, 100d
    DIV BL

    mov byte[200h], AL
    ret