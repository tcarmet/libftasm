; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/09 18:55:04 by dpollet           #+#    #+#              ;
;    Updated: 2015/05/09 21:26:53 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isalnum
	extern _ft_isalpha
	extern _ft_isdigit

_ft_isalnum:
	CMP rdi, 0
	je false
	call _ft_isdigit
	CMP rax, 1
	je true
	call _ft_isalpha
	CMP rax, 1
	je true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret