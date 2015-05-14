; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/14 14:14:48 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/14 14:30:07 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define READ 0x2000003
%define WRITE 0x2000004

section .data
	_null: db	0

section .text
	global _ft_cat

_ft_cat:
	push rdi
	mov r9, rdi
	jmp boucle

boucle:
	mov rax, READ
	mov rdi, r9
	lea rsi, [rel _null]
	mov rdx, 1
	syscall
	cmp rax, 1
	jne finish
	mov rax, WRITE
	mov rdi, 1
	lea rsi, [rel _null]
	mov rdx, 1
	syscall
	cmp rax, -1
	je finish
	jmp boucle

finish:
	pop rdi
	mov rax, 0
	ret

