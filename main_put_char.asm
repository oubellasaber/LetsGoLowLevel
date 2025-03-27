extern put_char
global  _start


section .data
	a: db 65
	b: db 10
section .text
_start:
	mov rdi, a
	call put_char
	mov rdi, b
	call put_char

	mov rax, 60
	xor rdi, rdi
	syscall
