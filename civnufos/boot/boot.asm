[ORG 0x7c00]

BOOT_DRIVER db 0
KERNEL_OFFSET db 0x1000
KERNEL_MSG db "LOADING CIVNUFOS",0


    mov [BOOT_DRIVER], dl
    mov bp,0x9000
    mov sp,bp

    mov ax,3
    int 0x10
    call load_kernel_start
    jmp $
    
    %include "print.asm"

[bits 16]
load_kernel_start:
    mov bx, KERNEL_MSG
    call print
    call print_text

    mov bx,KERNEL_OFFSET
    mov dh,31
    ret




[bits 32]
START_PROTECTED_MODE:
    call KERNEL_OFFSET
    jmp $
    

    TIMES 510 - ($ - $$) db 0
    dw 0xAA55
    
