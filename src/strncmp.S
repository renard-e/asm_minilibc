	section .text
	global strncmp:function
	
ret_dif:
	sub r8B, r9B
	movsx rax, r8B
	leave
	ret

error:
	mov rax, 0
	leave
	ret
	
compare:
	cmp r8B, r9B
	jne ret_dif
	inc rcx
	inc rdi
	inc rsi
	jmp loop
	
strncmp:
	enter 0, 0
	mov rcx, 0
	cmp rdi, 0x00
	je error
	cmp rsi, 0x00
	je error
loop:
	mov r8B, [rdi]
	mov r9B, [rsi]
	cmp r8B, 0
	je ret_dif
	cmp r9B, 0
	je ret_dif
	cmp rcx, rdx
	jne compare
	jmp ret_dif
