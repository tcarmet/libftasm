; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 19:35:27 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/14 18:17:29 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;void ft_puts(char *str)
; rax			rdi
;		write(int fd, char *str, int len)
;  rax         rdi         rsi      rdx

%define WRITE 0x2000004
%define STDOUT 1

section .data
	_null_str db "(null)"

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	cmp rdi, 0
	je nul
	push rdi
	call _ft_strlen
	pop rsi
	mov rdx, rax
	mov rdi, STDOUT
	mov rax, WRITE
	syscall
	jc fail
	jmp bn

fail:
	mov rax, -1
	ret

nul:
	mov rdi, STDOUT
	lea rsi, [rel _null_str]
	mov rdx, 6
	mov rax, WRITE
	syscall
	jc fail

bn:
 	push 10
    mov rsi, rsp 
    mov rdi, STDOUT
    mov rdx, 1
    mov rax, WRITE
    syscall
    jc fail
    pop rax
    ret