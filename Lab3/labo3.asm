    org 100h

    section .data
    array db 0,0,0,0,3,1,2,0
    
    section .text
    ; DIRECCIONAMIENTO
    xor DI, DI
    xor SI, SI
    mov word CX, 8d
iterar:
    mov byte AL, [array+DI]
    mov byte [200h+SI], AL
    add [210h], AL
    inc SI
    inc DI
    LOOP iterar
exit:
    int 20h

