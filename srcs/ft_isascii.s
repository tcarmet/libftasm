; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/09 21:49:17 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/09 21:55:22 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isascii

_ft_isascii:
	cmp rdi, 0
	jl false

	cmp rdi, 127
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret	