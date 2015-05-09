/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/09 20:29:16 by tcarmet           #+#    #+#             */
/*   Updated: 2015/05/09 20:59:43 by tcarmet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include "libfts.h"
#include <ctype.h>


void	launch_isalnum(int c, int test)
{
	if (ft_isalpha(c) == isalpha(c))
		printf("TEST%d OK\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_isalnum(void)
{
	int		test;

	printf("---------- TEST isalnum ------------\n");
	test = 1;
	if (ft_isalnum(0) == isalnum(0))
		printf("TEST%d OK\n", test);
	else
		printf("TEST%d ERROR\n", test);
	test++;
	if (ft_isalnum('a') == isalnum('a'))
		printf("TEST%d OK\n", test);
	else
		printf("TEST%d ERROR\n", test);
	test++;
	if (ft_isalnum(2) == isalnum(2))
		printf("TEST%d OK\n", test);
	else
		printf("TEST%d ERROR\n", test);
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

int		main(void)
{
	test_isalnum();
	test_isalpha();
	test_isdigit();
}