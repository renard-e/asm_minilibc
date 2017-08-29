	section .text
	global memset:function

memset:
	enter 0, 0
	cmp rdi, 0x00
	je error
	mov r8, rdi

loop:
	cmp rdx, -1
	je success
	mov [rdi], sil
	dec rdx
	inc rdi
	jmp loop
	
success:
	mov rax, r8
	leave
	ret
error:
	mov rax, 0x00
	leave
	ret
