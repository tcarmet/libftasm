#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/09 17:27:03 by tcarmet           #+#    #+#              #
#    Updated: 2015/05/09 21:27:36 by tcarmet          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME	= libfts.a

SRC		= ft_isalnum.s ft_isalpha.s	ft_isdigit.s

NASM	= ~/.brew/Cellar/nasm/2.11.08/bin/nasm

SRCDIR	= ./srcs/

INCDIR	= ./includes/

FLAG	= -f macho64

SRCS	= $(addprefix $(SRCDIR), $(SRC))

OBJS	= $(SRCS:.s=.o)

all: $(NAME)

$(NAME) : $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

%.o: %.s
	$(NASM) $(FLAG) $<

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)
	rm -rf main_test

re: fclean all

test: all
	gcc -Wall -Wextra -Werror -o main_test main.c -L./ -lfts -I./includes/

git: fclean
	git add .
	echo "Enter Your Commit : "
	read root_path ; git commit -m "$$root_path"
	git push