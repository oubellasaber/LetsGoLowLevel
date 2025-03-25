global _start
section .data
    output_char db 0   ; Reserve a byte to store the character

section .text
_start:
    mov rax, 64
    cmp rax, 65
    jl set_rbx_to_0
    mov rbx, 0
    jmp prepare_output
set_rbx_to_0:
    mov rbx, 1

prepare_output:
    ; Convert RBX to ASCII for printing
    add rbx, '0'  ; Convert to character
    mov byte [output_char], bl  ; Store character in memory

    ; Write to stdout
    mov rax, 1        ; syscall: write
    mov rdi, 1        ; file descriptor: stdout
    mov rsi, output_char  ; address of character to print
    mov rdx, 1        ; print 1 byte
    syscall

    ; Exit program
    mov rax, 60       ; syscall: exit
    xor rdi, rdi      ; exit code 0
    syscall
