; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 16:01:19 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/12 21:00:07 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memset

_ft_memset:
	cmp rdi, 0
	je finish

	cmp rdx, 0
	je finish

	push rdi
	mov rcx, rdx
	mov al, sil
	rep stosb
	pop rax


finish:
	ret
