extern putchar
global _start
section .data
        a db 'A'
section .text
_start:
        mov rdi, a
        call putchar
        mov rax, 60          ; exit syscall
        xor rdi, rdi          ; exit status 0
        syscall
