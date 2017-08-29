	section .text
	global memmove:function


;;; rdi dest
;;; rsi src
;;; rdx n
	
memmove:
	enter 0, 0
	mov   rcx, 0
	cmp   rdi, 0x00
	je    error
	cmp   rsi, 0x00
	je    error
	mov   r10, rdi

loop:
	cmp   rdx, 0
	je    success
	cmp   byte[rdi], 0
	je    success
	cmp   byte[rsi], 0
	je    success
	mov   r8B, [rsi]
	mov   [rdi], r8B
	dec   rdx
	inc   rdi
	inc   rsi
	jmp   loop

success:
	mov   rax, r10
	leave
	ret
	
error:
	mov   rax, rdi
	leave
	ret
