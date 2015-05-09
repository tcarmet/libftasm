; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: dpollet <dpollet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/09 18:48:56 by dpollet           #+#    #+#              ;
;    Updated: 2015/05/09 18:54:17 by dpollet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;int	ft_isdigit(int c)
;rax	<global>			rdi

section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, 0
	je false

	cmp rdi, 48
	jl false

	cmp rdi, 57
	jl true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret