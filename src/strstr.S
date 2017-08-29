	section .text
	global strstr:function

strstr:
	enter 0, 0
	mov rcx, 0
	mov r8, 0
	cmp rdi, 0x00
	je error
	cmp rsi, 0x00
	je error
	mov r10, rsi
	mov r9, rdi

start:
	cmp byte[rdi], 0
	je test_end
	cmp byte[rsi], 0
	je success
	mov bl, [rdi]
	cmp byte[rsi], bl
	je process
	jmp next_char

process:
	cmp r8, 0
	je occurence
	inc rsi
	inc rdi
	jmp start
	
occurence:
	inc r8
	mov r9, rdi
	jmp process
	
next_char:
	inc rdi
	mov rsi, r10
	mov r8, 0
	jmp start

test_end:
	cmp byte[rsi], 0
	je success
	jmp error

error:
	mov rax, 0x00
	leave
	ret

success:
	mov rax, r9
	leave
	ret
