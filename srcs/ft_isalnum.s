; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/09 21:31:59 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/09 21:43:44 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isalnum
	extern _ft_isalpha
	extern _ft_isdigit

_ft_isalnum:
	cmp rdi, 0
	je false

	call _ft_isdigit
	cmp rax, 1
	je true

	call _ft_isalpha
	cmp rax, 1
	je true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret