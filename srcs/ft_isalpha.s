;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/09 20:16:45 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/09 20:16:50 by tcarmet          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isalpha

_ft_isalpha:
	cmp rdi, 0
	je false
	cmp rdi, 65
	jl false
	cmp rdi, 91
	jl true
	cmp rdi, 97
	jl false
	cmp rdi, 122
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret