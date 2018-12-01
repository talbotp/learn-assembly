; Program to take on input two numbers and returns the addition of the two 
; input numbers.
;
; I know this probably sucks and is really bad, just messing with it.
;
; Author: P Talbot

section .data
    msg1 db 'Enter the first number: '          ; Tell user to input a number.
    lenmsg1 equ $-msg1                          ; Length of message 1.

    msg2 db 'Enter the second number: '         ; Tell user to input number 2.
    lenmsg2 equ $-msg2                          ; Length of message 2.
    
    output db 'The sum is: '                    ; Alert user of the sum.
    lenoutput equ $-output                      ; Length of output

section .bss
    num1 resb 5
    num2 resb 5
    res resb 1

section .text
    global _start

_start:
    ; Prompt the user to input a number.
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, lenmsg1
    int 80h

    ; Read and store the data.
    mov eax, 3
    mov ebx, 2
    mov ecx, num1
    mov edx, 5
    int 80h

    ; Prompt the user for a second input number.
    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, lenmsg2 
    int 80h  

    ; Save the second number.
    mov eax, 3
    mov ebx, 2
    mov ecx, num2
    mov edx, 5
    int 80h

    ; Add num1 and num2 to registers and then subtract '0' to make them decimal.
    mov eax, [num1]
    sub eax, '0'

    mov ebx, [num2]
    sub ebx, '0'

    ; Add eax and ebx
    add eax, ebx
    ; Add '0' to convert sum from decimal to ASCII.
    add eax, '0'

    ; Store eax in res.
    mov [res], eax

    ; Print the output message. 
    mov eax, 4
    mov ebx, 1
    mov ecx, output
    mov edx, lenoutput
    int 80h

    ; Print the sum.
    mov eax, 4
    mov ebx, 1
    mov ecx, res
    mov edx, 1 
    int 80h
    
exit:
    mov eax, 1
    xor ebx, ebx
    int 80h
