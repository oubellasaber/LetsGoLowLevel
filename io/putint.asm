extern putchar
global putint

section .data
	num db 0

section .text
putint:
	push rdi
	xor rcx, rcx
	mov rbx, 10	; base
	mov rax, rdi
loop:
	xor rdx, rdx
	div rbx
	add rdx, '0'
	push rdx
	inc rcx
	test rax, rax
	jnz loop
print_digits:
	pop rdi
	mov [num], rdi
	mov rdi, num
	push rcx
	call putchar
	pop rcx
	dec rcx
	test rcx, rcx
	jnz print_digits
	
	pop rdi
	ret
	
