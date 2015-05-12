; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/12 18:52:07 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/12 18:59:26 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_memcpy
	extern _malloc


_ft_strdup:
	cmp rdi, 0
	je finish
	push rdi
	call _ft_strlen
	push rax
	mov rdi, rax

	call _malloc
	cmp rax, 0
	je finish

	mov rcx, rax
	pop rax
	mov rdx, rax
	pop rdi
	mov rsi, rdi
	mov rdi, rcx

	call _ft_memcpy
	ret

finish:
	ret