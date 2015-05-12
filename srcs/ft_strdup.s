; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/12 18:52:07 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/12 20:48:39 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_memcpy
	extern _malloc

_ft_strdup:
	push rdi
	call _ft_strlen
	push rax
	mov rdi, rax

	call _malloc
	cmp rax, 0
	je finish

	mov rcx, rax ; valeur retour de malloc
	pop rax ; len de strlen
	mov rdx, rax ; je met dans rdx la len
	pop rsi ; je reprend rdi (chaine source)
	mov rdi, rcx ; je place dans rdi ma chaine alloue

	call _ft_memcpy
	ret

finish:
	pop rdi
	pop rax
	mov rax, 0
	ret