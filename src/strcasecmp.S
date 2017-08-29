	section .text
	global strcasecmp:function

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
	
strcasecmp:
	enter 0, 0
	cmp rdi, 0x00
	je error
	cmp rsi, 0x00
	je error
	mov rcx, 0
	mov rdx, 0
loop:
	mov r10B, [rdi]
	mov r11B, [rsi]
	
loop2:
	cmp rcx, 0
	je lower_case_r10
	cmp rdx, 0
	je lower_case_r11
	mov rcx, 0
	mov rdx, 0
	cmp r10B, 0
	je ret_dif
	cmp r11B, 0
	je ret_dif
	jmp compare

lower_case_r10:
	mov rcx, 1
	cmp r10B, 90
	jg loop2
	cmp r10B, 65
	jl loop2
	add r10B, 32
	jmp loop2

lower_case_r11:
	mov rdx, 1
	cmp r11B, 90
	jg loop2
	cmp r11B, 65
	jl loop2
	add r11B, 32
	jmp loop2
