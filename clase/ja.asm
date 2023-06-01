    org 100h
    section .text

        mov AL, 05d //01d
        CMP AL, 03d
        JA suma
        CMP AL, 03d
        JB resta

        ;mov AL, 03d
    
        int 20h

    suma:
        add Al, 03d
        mov BX, 200h
        mov [BX], AL
        ret
    ;Se esta operando la resta 
    resta:
        sub Al, 03d
        mov BX, 200h
        mov [BX], AL
        ret
// Version 2
        mov AL, 05d //01d
        CMP AL, 03d
        JA suma
        CALL suma
        CMP AL, 03d
        JB resta
    
        int 20h

    suma:
        add Al, 03d
        mov BX, 200h
        mov [BX], AL
        ret
    ;Se esta operando la resta 
    resta:
        sub Al, 03d
        mov BX, 200h
        mov [BX], AL
        ret

