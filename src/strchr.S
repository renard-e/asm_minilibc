	section .text
	global strchr:function

strchr:
	enter 0, 0
	cmp rdi, 0x00
	je error
	mov r8B, sil
	
loop:
	mov r9B, [rdi]
	cmp r8B, 0
	je testing
	cmp r9B, 0
	je error

loop2:	
	cmp r8B, r9B
	jne next
	jmp test_char

next:
	inc rdi
	jmp loop

test_char:
	cmp r8B, r9B
	je success
	inc rdi
	jmp loop
	
testing:
	cmp r9B, 0
	je success
	cmp r8B, r9B
	je success
	jmp loop2

success:
	mov rax, rdi
	leave
	ret
	
error:
	mov rax, 0x00
	leave
	ret
