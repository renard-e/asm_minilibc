	section .text
	global strcspn:function

strcspn:
	enter 0, 0
	mov rcx, 0
	cmp rsi, 0x00
	je error
	cmp rdi, 0x00
	je error
	mov r10, rsi

start:
	mov r8B, [rdi]
	mov r9B, [rsi]
	cmp r8B, 0
	je success
	cmp r9B, 0
	je reset
	cmp r9B, r8B
	je success
	jmp next_rsi

next_rsi:
	inc rsi
	jmp start

reset:
	mov rsi, r10
	inc rdi
	inc rcx
	jmp start

success:
	mov rax, rcx
	leave
	ret

error:
	mov rax, 0
	leave
	ret
