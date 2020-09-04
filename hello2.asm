;hello2.asm - improvement on hello.asm
section .data
	msg	db	"hello, asm world",0
	NL	db	0xa	; ASCII newline
section .bss
section .text
	global main
main:
	mov	rax, 1		; 1 = write
	mov	rdi, 1 		; 1 = to stdout
	mov	rsi, msg	; what to display
	mov	rdx, 16		; string length
	syscall
	mov	rax, 1		; 1 = write
	mov	rdi, 1		; 1 = to stdout
	mov 	rsi, NL		; what to display
	mov	rdx, 1		; length of the message
	syscall
	mov	rax, 60		; 60 = exit
	mov	rdi, 0		; 0 = success exit code
	syscall
	
