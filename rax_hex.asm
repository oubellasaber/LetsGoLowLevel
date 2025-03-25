global _start
section .data
codes:
	db '0123456789ABCDEF'

section .text
_start:
	; a hey number can be stored in 4bits
	mov rax, 0x112233445566778A

	mov rdi, 1
	mov rdx, 1
	mov rcx, 64

	.loop: ; this is a local label, to call it outside of _start we have to call it like this _start.loop
	push rax
	sub rcx, 4
	sar rax, cl
	and rax, 0xf
	
	lea rsi, [codes + rax]
	mov rax, 1
	
	push rcx
	syscall
	pop rcx

	pop rax
	test rcx, rcx
	jnz .loop

	mov rax, 60
	xor rdi, rdi
	syscall
	
