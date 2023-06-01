        org 100h

        section .text

        XOR SI, SI ; Limpiar SI
        XOR DI, DI ; Limpiar DI
        MOV word CX, 5d ; colocar 5d en CX (este es el tamaño de la variable)
        ;CX VA LIGADO CON LOOP, LOOP se encarga de restar -1 a CX en cada iteración
iterar:
        MOV byte AL, [msj+DI] ; En la primera iteración DI tiene 0, se agarra la primera letra
        MOV byte [200h+SI], AL ; En la primera iteración SI tiene 0, se coloca en 200h+0
        INC SI ; Se incrementa SI en 1, similar a SI++ para lenguajes de alto nivel
        INC DI ; Se incrementa DI en 1, similar a DI++ para lenguajes de alto nivel
        LOOP iterar ; Se manda a llamar la etiqueta iterar
exit:
        int 20h

section .data

msj DB "Angel" ; string msj = "Angel"

----
;Programa que mueva un arreglo de 8 datos númericos hacia registro de memoria iniciando en 210h

    org 100h

    section .text

    ; Se especifica el tamaño del arreglo
    mov cx, 8d
    ; Se inicializan los registros
    mov si, 0
    mov di, 210h
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
    ; Arreglo de 8 datos numericos
    arreglo db 1,2,3,4,5,6,7,8