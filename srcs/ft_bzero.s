; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 16:18:26 by tcarmet           #+#    #+#              ;
;    Updated: 2015/05/14 17:41:54 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;void	bzero(void *s, size_t n);
; rdi, rsi, rdx
section .text
	global _ft_bzero

_ft_bzero:
	cmp rdi, 0
	je finish

	cmp rsi, 0
	je finish
	mov rcx, rsi

boucle:
	mov byte [rdi], 0
	inc rdi
	loop boucle

finish:
	ret 