extern putstr
global _start
section .data
        a db 'Hello world', 0xA
section .text
_start:
        mov rdi, a
	mov rsi, 12
        call putstr
        mov rax, 60          ; exit syscall
        xor rdi, rdi          ; exit status 0
        syscall
