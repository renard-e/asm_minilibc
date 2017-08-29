	section .text
	global rindex:function

rindex:
	enter 0, 0
	cmp rdi, 0x00
	je error
	mov rcx, 1

set_end:
	mov r8B, [rdi]
	cmp r8B, 0
	je search_char
	inc rdi
	inc rcx
	jmp set_end
	
search_char:
	cmp rcx, 0
	je error
	mov r8B, [rdi]
	cmp r8B, sil
	je success
	dec rdi
	dec rcx
	jmp search_char

success:
	mov rax, rdi
	leave
	ret
	
error:
	mov rax, 0x00
	leave
	ret
