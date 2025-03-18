global _start

section .bss
    result resb 2  ; Reserve 2 bytes: one for the number, one for newline

section .text
_start:
    push rax
    push rbx

    mov al, 1       ; Load `a`
    mov bl, 4       ; Load `b`

    call _add       ; Compute `a + b`

    add al, '0'     ; Convert to ASCII
    mov [result], al  ; Store the character
    mov byte [result + 1], 10  ; Add newline ('\n')

    ; Print result with newline
    mov rdi, 1       ; stdout
    mov rsi, result  ; Pointer to result string
    mov rdx, 2       ; Length (1 digit + newline)
    mov rax, 1       ; Syscall: write
    syscall

    pop rbx
    pop rax

    mov rax, 60
    xor rdi, rdi
    syscall

_add:
    add al, bl
    ret

