; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 19:35:27 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/10 21:46:45 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;void ft_puts(char *str)
; rax			rdi
;		write(int fd, char *str, int len)
;  rax         rbx         rcx      rdx

%define WRITE 0x2000004

section .data
	_null_str db "(null)", 0
;	_new_line db 10

section .text
	global _ft_puts
	extern _ft_strlen



_ft_puts:
	cmp rdi, 0
	je nul

nul:
	mov rax, WRITE
	mov rdi, 1
	lea rsi, [rel _null_str]
	mov rdx, 6
	;call(0x2000004)
	syscall
	jmp bn

bn:
	push rsi
	mov rsi, rsp
	mov rax, WRITE
	mov rdi, 1
	mov rsi,
	mov rdx, 1
	syscall
	pop rsi
	ret
