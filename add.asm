global _start
section .data
	a: db 1
	b: db 2
	result: db 0

section .text
_start:
	mov al, byte [a]
	add al, byte[b]
	mov byte [result], al

	add byte [result], '0'

	mov rax, 1
	mov rdi, 1
	mov rsi, result
	mov rdx, 1
	syscall

	mov rax, 60
	xor rdi, rdi
	syscall
