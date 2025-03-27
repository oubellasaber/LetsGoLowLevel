extern putint
global _start

section .text
_start:
	mov rdi, 893388383838
	call putint

	mov rax, 60
	xor rdi, rdi
	syscall
