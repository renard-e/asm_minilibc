	section .text
	global strpbrk:function

strpbrk:
	enter 0, 0
	mov rcx, 0
	cmp rdi, 0x00
	je error
	cmp rsi, 0x00
	je error
	cmp byte[rsi], 0
	je error
	cmp byte[rdi], 0
	je error
	mov r10, rsi
	
start:	
	mov r8B, [rdi]
	cmp r8B, 0
	je error
	jmp loop

loop:
	mov r9B, [rsi]
	cmp r9B, 0
	je reset
	cmp r8B, r9B
	je success
	inc rsi
	jmp loop

reset:
	mov rsi, r10
	inc rdi
	jmp start
	
success:
	mov rax, rdi
	leave
	ret
	
error:
	mov rax, 0x00
	leave
	ret
