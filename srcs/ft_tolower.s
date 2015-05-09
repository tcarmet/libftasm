; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/09 22:15:08 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/09 22:43:00 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_tolower

_ft_tolower:
	cmp rdi, 0
	je false

	cmp rdi, 65
	jl normal

	cmp rdi, 91
	jl lower

normal:
	mov rax, rdi
	ret

lower:
	add rdi, 32
	mov rax, rdi
	ret

false:
	mov rax, 0
	ret
