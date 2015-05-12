;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 13:18:31 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/10 13:18:36 by tcarmet          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_strlen

_ft_strlen:
	mov rax, 0
	cmp rdi, 0
	je finish
	mov rcx, -1
	mov al, 0
	repnz scasb
	neg rcx
	sub rcx, 2
	mov rax, rcx

finish:
	ret