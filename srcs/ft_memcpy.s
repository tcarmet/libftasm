; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/12 14:10:10 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/12 17:11:01 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	void	*ft_memcpy(void *dst, const void *src, size_t n)
;	rax         			rdi         rsi    	 	 rdx

section .text
	global _ft_memcpy

_ft_memcpy:
	mov rax, rdi
	mov rcx, rdx
	push rsi

	cmp rsi, 0
	je finish

	rep movsb
finish:
	pop rsi
	ret