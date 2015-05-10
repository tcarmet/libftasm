; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 16:01:19 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/10 16:37:23 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memset

_ft_memset:
	mov rax, 0
	cmp rdi, 0
	je finish
	cmp rdx, 0
	je finish
	mov rcx, rdx
	jmp boucle

boucle:
	;cmp byte [rdx], 0
	mov [rdi], rsi
	inc rdi
	loop boucle

finish:
	ret