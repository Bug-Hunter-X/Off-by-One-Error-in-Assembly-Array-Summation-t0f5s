```assembly
section .data
    array dw 10, 20, 30, 40, 50
    length equ $-array ; Calculate the length of the array

section .bss
    sum resd 1 ; Reserve space for the sum

section .text
    global _start

_start:
    ; Initialize the sum to 0
    mov dword [sum], 0

    ; Loop through the array and add each element to the sum
    mov esi, array ; Point esi to the start of the array
    mov ecx, length ; Set the loop counter
    mov edi, 0 ; initialize the array index

loop_start:
    add dword [sum], [esi + edi*2] ; Add the current element to the sum
    add edi, 1 ; increment index
    loop loop_start

    ; Exit the program
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80
```