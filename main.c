/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/09 20:29:16 by tcarmet           #+#    #+#             */
/*   Updated: 2015/05/10 15:09:21 by tcarmet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include "libfts.h"
#include <ctype.h>


void	launch_isalnum(int c, int test)
{
	if (ft_isalnum(c) == isalnum(c))
		printf("TEST%d OK\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_isalnum(void)
{
	int		test;

	printf("---------- TEST isalnum ------------\n");
	test = 1;
	launch_isalnum(0, test);
	test++;
	launch_isalnum('c', test);
	test++;
	launch_isalnum(3, test);
	test++;
	launch_isalnum('Z', test);

}

void	launch_alpha(int c, int test)
{
	if (ft_isalpha(c) == isalpha(c))
		printf("TEST%d OK\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_isalpha(void)
{
	int		test;

	printf("---------- TEST isalpha ------------\n");
	test = 1;
	launch_alpha(0, test);
	test++;
	launch_alpha('c', test);
	test++;
	launch_alpha(3, test);
	test++;
	launch_alpha('Z', test);
}

void	launch_digit(int c, int test)
{
	if (ft_isdigit(c) == isdigit(c))
		printf("TEST%d OK\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_isdigit(void)
{
	int		test;

	printf("---------- TEST isdigit ------------\n");
	test = 1;
	launch_digit(0, test);
	test++;
	launch_digit('c', test);
	test++;
	launch_digit(3, test);
	test++;
	launch_digit('Z', test);	
}

void	launch_isascii(int c, int test)
{
	if (ft_isascii(c) == isascii(c))
		printf("TEST%d OK\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_isascii(void)
{
	int		test;

	printf("---------- TEST isascii ------------\n");
	test = 1;
	launch_isascii(0, test);
	test++;
	launch_isascii('c', test);
	test++;
	launch_isascii(3, test);
	test++;
	launch_isascii('#', test);
}

void	launch_isprint(int c, int test)
{
	if (ft_isprint(c) == isprint(c))
		printf("TEST%d OK\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_isprint(void)
{
		int		test;

	printf("---------- TEST isprint ------------\n");
	test = 1;
	launch_isprint(0, test);
	test++;
	launch_isprint('c', test);
	test++;
	launch_isprint(3, test);
	test++;
	launch_isprint(126, test);
}


void	launch_tolower(int c, int test)
{
	if (ft_tolower(c) == tolower(c))
		printf("TEST%d OK\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_tolower(void)
{
		int		test;

	printf("---------- TEST tolower ------------\n");
	test = 1;
	launch_tolower(0, test);
	test++;
	launch_tolower('c', test);
	test++;
	launch_tolower(3, test);
	test++;
	launch_tolower('C', test);
}

void	launch_toupper(int c, int test)
{
	if (ft_toupper(c) == toupper(c))
		printf("TEST%d OK\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_toupper(void)
{
		int		test;

	printf("---------- TEST toupper ------------\n");
	test = 1;
	launch_toupper(0, test);
	test++;
	launch_toupper('c', test);
	test++;
	launch_toupper(3, test);
	test++;
	launch_toupper('C', test);
}

void	launch_strlen(char *c, int test)
{
	if (ft_strlen(c) == strlen(c))
		printf("TEST%d OK\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_strlen(void)
{
		int		test;

	printf("---------- TEST strlen ------------\n");
	test = 1;
	launch_strlen("toto", test);
	test++;
	launch_strlen("totot ma ejqijifjeif", test);
	test++;
	launch_strlen("fkebwkfbewkjfbk", test);
	test++;
	launch_strlen("dhaksdhkjsahdkajsdj", test);
}

int		main(void)
{
	test_isalnum();
	test_isalpha();
	test_isdigit();
	test_isascii();
	test_isprint();
	test_tolower();
	test_toupper();
	test_strlen();
	return (0);
}