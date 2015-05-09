; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/09 22:08:34 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/09 22:10:33 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 0
	je false

	cmp rdi, 32
	jl false

	cmp rdi, 127
	jl true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret