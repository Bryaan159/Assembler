
    org 100h

    section .text

    xor AX, AX
    mov byte[210h], 3d
    mov byte[220h], 4d
    mov AL, [210H]
    mov BL, [220H]

    call suma

    CMP AL, 10
    JB bucleSuma
; Si el resultado es mayor que 10 se convierte de Lb a Kg
    ; buscar manera de trabajar con numeros decimales
    call lbAKg

    int 20h

; funcion de conversion
lbAKg:
    MOV AH,AL
    MOV AL, 45d
    MUL AH
    MOV BL, 100d
    DIV BL

    mov byte[200h], AL
    ret
suma:
    add AL, BL
    ret

;Si el resultado es menor a 10 se suma en bucle hasta ser mayor a 20
bucleSuma:
; Si es mayor a 20 se convierte de Kg a Lb
    add AL, 2d
    cmp AL, 20
    JAE conversion
    
    JMP bucleSuma

conversion:
; Buscar manera de operar con numeros decimales
    MOV AH, AL
    MOV AL, 22d
    MUL AH
    MOV BL, 100d
    DIV BL

    mov byte[200h], AL
    ret