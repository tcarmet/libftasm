;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/09 21:31:26 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/09 21:31:27 by tcarmet          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, 0
	je false

	cmp rdi, 48
	jl false

	cmp rdi, 58
	jl true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret