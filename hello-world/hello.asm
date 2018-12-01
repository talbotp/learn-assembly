; Simple Hello world program.

section .text
    global _start           ; Declared for the linker.

_start:                     ; Tells the linker beginning of execution.
    mov edx, len            ; Message length
    mov ecx, msg            ; Message to write.
    mov ebx, 1              ; file descriptor [stdout]
    mov eax, 4              ; system call number [sys_write]
    int 0x80                ; call kernel

    mov eax, 1              ; system call number [sys_exit] 
    int 0x80                ; call kernel

section .data
msg db 'Hello World!', 0xa 
len equ $ - msg 
