; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/09 22:43:09 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/09 22:46:57 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_toupper

_ft_toupper:
	cmp rdi, 0
	je false

	cmp rdi, 97
	jl normal

	cmp rdi, 123
	jl upper

normal:
	mov rax, rdi
	ret

upper:
	sub rdi, 32
	mov rax, rdi
	ret

false:
	mov rax, 0
	ret
