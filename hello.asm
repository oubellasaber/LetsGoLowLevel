global _start     ; Defines the entry point symbol for the linker

section .data     ; Starts the data section where variables are defined
message: db "Hello World! By Saber", 10  ; Defines a string variable named 'message'
                                ; 'db' means "define byte" - creates an array of bytes
                                ; The string contains "hello, world!" followed by
                                ; 10 (which is the ASCII code for newline '\n')

section .text     ; Starts the code section where the program instructions go
_start:           ; Entry point of the program (must match the 'global' declaration)
	mov rax, 1    ; System call number for 'write' is 1
                  ; In x86-64 Linux, system call numbers are loaded into RAX
    
	mov rdi, 1    ; First argument (in RDI): file descriptor
                  ; 1 is the file descriptor for standard output (console)
    
	mov rsi, message  ; Second argument (in RSI): pointer to the buffer
                      ; Points to the memory location of our string
    	mov rdx, 23   ; Third argument (in RDX): buffer length in bytes
                  ; Our string "hello, world!" plus newline is 14 bytes
    
	syscall       ; Invoke the system call specified in RAX
                  ; This executes the 'write' system call with our arguments
