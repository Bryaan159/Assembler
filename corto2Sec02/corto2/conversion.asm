org 100h

    section .text

    ;Se hace una limpieza de las variables
    XOR AX, AX
    ;Se almacena cada valor a la variable
    MOV byte[210h], 3d
    MOV byte[220h], 5d

    ;utilizamos direccionamiento
    MOV AL, [210h]
    MOV BL, [220h]

    ;Se hace llamada de la primera funcion
    call suma

    ;Se hace la comparacion si es mayor a 10
    CMP AL, 10
    JA bucleSuma

    ;Si el resultado es menor que 10 se convierte de euro a dolar
    call euAUs

    int 20h

;funcion de conversion
euAUs:
    MOV AH, AL
    MOV AL, 109d
    MUL AH
    MOV BL, 100d
    DIV BL

    ;el resultado lo almacenamos en 200h
    MOV [200h], AX
    ret


suma:
    add AL, BL
    ret

;Si el resultado es mayor que 10 se suma un bucle de 2
bucleSuma:
;Si es mayor a 20 se convierte de dolar a euro
    ADD AL, 2d
    CMP AL, 20
    JA conversion

    jmp bucleSuma

conversion:
;Se hace la conversion de dolare a euro
    MOV AH, AL
    MOV AL, 91d
    MUL AH
    MOV BL, 100d
    DIV BL

    ;se almacena el dato en nuestra memoria 200h
    MOV [200h], AX
    ret