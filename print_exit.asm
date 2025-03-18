global _start			; _start is a label
; global, section, db are directives (controls the translation process)
; What is the translation process: assembly to machine code maybe

section .data			; global variables
message: db 'Hello world!', 10

section .text			; instructions
_start:
	; mov used to assign regiters either other registers value or immediate value, src and des operands must be of the same size
	mov rax, 1 		; func: syscall (write)
	mov rdi, 1 		; agr1: file descriptor
	mov rsi, message	; arg2: string
	mov rdx, 14		; arg3: string total chars
	; rdi, rsi, rdx, r10, r8 and r9 usually hold arguements
	syscall			; system call

	mov rax, 60		; syscall (exit)
	xor rdi, rdi		; return value 0 (seccuss) - we did not use move due to performance
	syscall
		
