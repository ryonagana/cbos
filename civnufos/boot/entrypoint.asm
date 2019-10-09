[bits 32]
extern kernel_main

global _start


_start:
    call extern_main
    jmp $
