; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/12 20:35:29 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/12 20:36:13 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcat
	extern _ft_strlen
	extern _ft_memcpy

_ft_strcat:
	mov rax, rdi

	cmp rsi, 0
	je finish

	jmp bous1

bous1:
	cmp [rdi], byte 0
	je bous2

	inc rdi

	jmp bous1

bous2:
	cmp [rsi], byte 0
	je finish

	mov cl, [rsi]
	mov [rdi], cl

	inc rdi
	inc rsi

	jmp bous2

finish:
	mov [rdi], byte 0
	ret