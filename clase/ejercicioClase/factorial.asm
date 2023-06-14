;Factorial de un numero
    org 100h
    section .text

;Entero y positivo
    mov ax, 1d
    ;No se ha guardado nada por el momento solo se llama la direccion 200h
    mov cx, [200h]
    
    call Factorial
Factorial: 
    cmp cx, 1
    jb end_factorial

    imul ax,cx
    sub 