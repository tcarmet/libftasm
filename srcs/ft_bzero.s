; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 16:18:26 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/10 16:24:06 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

; rdi, rsi, rdx
section .text
	global _ft_bzero
	extern _ft_memset

_ft_bzero:
	mov rax, 0
	cmp rdi, 0
	je finish
	cmp rsi, 0
	je finish
	mov rsi, rdx
	mov rdx, 0
	call _ft_memset

finish:
	ret 