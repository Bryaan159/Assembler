;Programa que mueva un arreglo de 12 datos númericos hacia registro de memoria iniciando en 210h

    org 100h

    section .text

    ; Se especifica el tamaño del arreglo
    mov cx, 12d
    ; Se inicializan los registros
    mov si, 0
    mov di, 200h
iterar:
    ; Se mueve el dato del arreglo a la memoria
    mov al, [arreglo + si]
    ; Se mueve el dato de la memoria al registro
    mov [di], al
    ; Se incrementa los registros
    inc si
    inc di
    ; Se decrementa el contador
    loop iterar
exit:

    int 20h

    section .data
    ; Arreglo de 12 datos texto
    arreglo db "AngelDebian1"; string msj = "AngelDebian1"