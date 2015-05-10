; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    test.s                                             :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/10 17:24:26 by dpollet           #+#    #+#              ;
;    Updated: 2015/05/10 21:22:37 by tcarmet          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;void  ft_puts(char *s);

section .text
	global _ft_puts

_ft_puts:
	push rsi
	push rdi
	add byte[rdi], 32
	add rdi, 1
	pop rdi
	pop rsi

callsysteme:
	;void write(fd, char *, int)
	; rax       rdi  rsi    rdx

	mov rcx, rdi
	mov rbx, 1

	call _ft_strlen
	mov rdx, rax

	mov rax, call(0x2000004)
	syscall
	ret


--------------------------------------------
mov    edx,4        ; message length
mov    ecx,msg        ; message to write
mov    ebx,1        ; file descriptor (stdout)
mov    eax,4        ; system call number (sys_write)
int    0x80        ; call kernel
2
global  _ft_puts
extern  _ft_strlen

%define _SYSCALL(nb)    0x2000000 | nb
%define WRITE           4
%define STDOUT          1

section .data
   _null_str   db  "(null)", 0
   _new_line   db  10

section .text

_ft_puts:
   cmp byte [rdi], byte 0                  ;check if str == NULL
   je  _null
   jmp _write_str

_write_str:
   cmp byte[rdi], 0
   je backslash_n
   mov r9, rdi
   push    rdi
   mov rax, _SYSCALL(WRITE)
   mov rdi, 1
   mov rsi, r9
   mov rdx, 1
   syscall
   pop rdi
   inc rdi
   jmp _write_str

_null:
   push    rdi                 ;work just on rdi
   mov rax, _SYSCALL(WRITE)    ;define syscall
   mov rdi, 1                  ;fd
   lea rsi, [rel _null_str]    ;load "_null_str"
   mov rdx, 6                  ;len -> write
   syscall                     ;appel syscall
   pop     rdi                 ;for next use
   jmp backslash_n             ;...

backslash_n:
   push    rdi
   mov rax, _SYSCALL(WRITE)
   mov rdi, 1
   lea rdx, [rel _new_line]
   mov rdx, 1                  ;nb de char a put
   pop rdi
   jmp end

end:
   mov rax, 1
   ret

  ----------------------------------------------------

%define CALL(x) 0x2000000 | x
%define WRITE 0x4

%define STDOUT 0x1


global _ft_puts
extern _ft_strlen

section .data
null:
    .string db "(null)"
    
section .text

_ft_puts:
    cmp rdi, 0x0
    je _null
    push rdi
    call _ft_strlen
    mov    rdx, rax
    pop rsi
    mov rdi, STDOUT
    mov rax, CALL(WRITE)
    syscall
    jmp _putnl

_null:
    mov rdi, STDOUT
    lea rsi, [rel null.string]
    mov rdx, 6
    mov rax, CALL(WRITE)
    syscall

_putnl:
    push 0xa
    mov rsi, rsp 
    mov rdi, STDOUT
    mov rdx, 1
    mov rax, CALL(WRITE)
    syscall
    pop    rax
    ret

  