global put_char

section .text
put_char:
    mov rax, 1      ; syscall: write
    ; top of stack (char address)
    add byte rdi, '0'
    mov rsi, rdi
    mov rdi, 1
    mov rdx, 1      ; print 1 byte
    syscall         ; invoke the syscall

    ret
