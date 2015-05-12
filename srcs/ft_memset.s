; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 16:01:19 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/12 18:58:11 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memset

_ft_memset:
	mov rax, rdi
	mov rcx, rdx
	push rsi
	
	cmp rsi, 0
	je finish

	rep movsb
finish:
	pop rsi
	ret