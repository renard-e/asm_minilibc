	section .text
	global strcmp:function
	
ret_dif:
	sub r10B, r11B
	movsx rax, r10B
	leave
	ret

error:
	mov rax, 0
	leave
	ret
	
compare:
	cmp r10B, r11B
	jne ret_dif
	inc rdi
	inc rsi
	jmp loop
	
strcmp:
	enter 0, 0
	cmp rdi, 0x00
	je error
	cmp rsi, 0x00
	je error
loop:
	mov r10B, [rdi]
	mov r11B, [rsi]
	cmp r10B, 0
	je ret_dif
	cmp r11B, 0
	je ret_dif
	jmp compare
