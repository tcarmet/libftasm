; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/12 18:52:07 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/14 14:13:57 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_memcpy
	extern _malloc

_ft_strdup:
	cmp rdi, 0
	je false
	mov	rbx, rdi
	call _ft_strlen
	mov	rdi, rax
	inc	rdi
	push rdi
	call _malloc
	cmp rax, 0
	je malloc_fail
	mov rdi, rax
	mov rsi, rbx
	pop rdx
	call _ft_memcpy

finish:
	ret

false:
	mov rax, 0
	ret

malloc_fail:
	pop rdx
	mov rax, 0
	ret