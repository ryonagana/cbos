print:
    pusha


start:
    mov al, byte[bx]
    cmp al,0
    je done

    mov ah, 0x0e
    int 0x10
    inc bx
    jmp start


print_text:
    pusha 

    mov ah,0x0e
    mov al,0x0a
    int 0x10

    mov al, 0x0d
    int 0x10

    popa
    ret



done:
    popa
    ret


    
