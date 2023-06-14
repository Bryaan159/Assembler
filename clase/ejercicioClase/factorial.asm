;Ejercicio 2 
    org 100h
    section .txt
    ; parte de codigo de Catedratica
    MOV AX, 1d
    MOV CX, [200h]
    ; e200 para modificar dato a celda de memoria
    call factorial

; Funcion factorial
factorial:
    cmp CX, 1
    jb end_factorial

    imul AX, CX
    sub CX, 1
    jmp factorial

end_factorial:
    mov AX, 1d
    int 20h
