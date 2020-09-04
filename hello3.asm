;hello2.asm - improvement on hello.asm
section .data
	msg	db	"hello, asm world",10, 0 ; 10=newline, 0=string null terminator
section .bss
section .text
	global main
main:
	mov	rax, 1		; 1 = write
	mov	rdi, 1 		; 1 = to stdout
	mov	rsi, msg	; what to display
	mov	rdx, 17		; string length with newline character
	syscall
	mov	rax, 60		; 60 = exit
	mov	rdi, 0		; 0 = success exit code
	syscall
	
