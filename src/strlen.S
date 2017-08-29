	section .text
	global strlen:function
	
count:
	inc rcx
	inc rdx
	jmp loop

strlen:
	enter 0, 0
	mov rcx, 0
	cmp rdi, 0x00
	je error
	mov rdx, rdi
loop:
	mov r8B, [rdx]
	cmp r8B, 0
	jne count
	mov rax, rcx
	leave
	ret

error:
	mov rax, 0
	leave
	ret
