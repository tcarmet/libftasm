; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/09 18:55:04 by dpollet           #+#    #+#              ;
;    Updated: 2015/05/09 21:25:25 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;int ft_isalnum(int c)
;rax  global    rdi;


;64bit = r..
;32bit = e..

;rax     rdi
;eax     edi

;http://www.iut-arles.up.univ-mrs.fr/eremy/Ens/Info1.Archi/asm.html#call
;http://x86.renejeschke.de/html/file_module_x86_id_279.html
;http://www.tutorialspoint.com/assembly_programming/assembly_system_calls.htm
;http://en.wikibooks.org/wiki/X86_Assembly/X86_Architecture

;0x20000004 Write

section .text
	global _ft_isalnum
	extern _ft_isalpha
	extern _ft_isdigit

_ft_isalnum:
	CMP rdi, 0
	je false
	call _ft_isdigit
	CMP rax, 1
	je true
	call _ft_isalpha
	CMP rax, 1
	je true
;	mov rcx, 10
;	jmp boucle

;boucle:
;	dec rax
;	inc rax
;	loop boucle

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret