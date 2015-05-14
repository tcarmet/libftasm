; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/12 20:35:29 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/14 14:16:10 by tcarmet          ###   ########.fr        ;
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

	jmp loop_begin

loop_begin:
	cmp [rdi], byte 0
	je loop_end

	inc rdi

	jmp loop_begin

loop_end:
	cmp [rsi], byte 0
	je finish

	mov cl, [rsi]
	mov [rdi], cl

	inc rdi
	inc rsi

	jmp loop_end

finish:
	mov [rdi], byte 0
	ret