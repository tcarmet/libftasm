#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/09 17:27:03 by tcarmet           #+#    #+#              #
#    Updated: 2015/05/14 14:47:59 by tcarmet          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME	= libfts.a

SRC		= 	ft_isalnum.s ft_isalpha.s ft_isdigit.s ft_isascii.s ft_isprint.s\
			ft_tolower.s ft_toupper.s ft_strlen.s ft_memset.s ft_bzero.s\
			ft_puts.s ft_memcpy.s ft_strdup.s ft_strcat.s ft_cat.s


#NASM    = /usr/local/Cellar/nasm/2.11.08/bin/nasm
NASM	= ~/.brew/Cellar/nasm/2.11.08/bin/nasm

SRCDIR	= ./srcs/

INCDIR	= ./includes/

CC_FLAG = -Wall -Werror -Wextra

MAIN	= main_test

FLAG	= -f macho64

SRCS	= $(addprefix $(SRCDIR), $(SRC))

OBJS	= $(SRCS:.s=.o)

.SILENT:

all: $(NAME)

$(NAME) : $(OBJS)
	echo "Compiling $(NAME)..."
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)
	echo "DONE"

%.o: %.s
	$(NASM) $(FLAG) $<

clean:
	rm -rf $(OBJS)
	echo "Object files has been removed!"

fclean: clean
	rm -rf $(NAME)
	rm -rf main_test
	echo "$(NAME) has been removed!"

re: fclean all

test: all
	gcc $(CC_FLAG) -o $(MAIN) main.c -L./ -lfts -I./includes/
	echo "$(MAIN) has been created!"
	./$(MAIN)

git: fclean
	git add .
	echo "Enter Your Commit : "
	read root_path ; git commit -m "$$root_path"
	git push
