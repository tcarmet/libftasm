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
;  rax         rdi         rsi      rdx

%define WRITE 0x2000004
%define STDOUT 1

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
	mov rdi, STDOUT
	lea rsi, [rel _null_str]
	mov rdx, 6
	mov rax, WRITE
	;call(0x2000004)
	syscall

bn:
	push rax
	mov rsi, 
	mov rdi, STDOUT
	mov rdx, 1
	mov rax, WRITE
	syscall
	pop rax
	ret
