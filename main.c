/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/09 20:29:16 by tcarmet           #+#    #+#             */
/*   Updated: 2015/05/14 17:36:42 by tcarmet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include "libfts.h"
#include <ctype.h>


void	launch_isalnum(int c, int test)
{
	if (ft_isalnum(c) == isalnum(c))
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_isalnum(void)
{
	int		test;

	printf("\033[36m---------- TEST isalnum ------------\033[00m\n");
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
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_isalpha(void)
{
	int		test;

	printf("\033[36m---------- TEST isalpha ------------\033[00m\n");
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
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_isdigit(void)
{
	int		test;

	printf("\033[36m---------- TEST isdigit ------------\033[00m\n");
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
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_isascii(void)
{
	int		test;

	printf("\033[36m---------- TEST isascii ------------\033[00m\n");
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
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_isprint(void)
{
		int		test;

	printf("\033[36m---------- TEST isprint ------------\033[00m\n");
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
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_tolower(void)
{
		int		test;

	printf("\033[36m---------- TEST tolower ------------\033[00m\n");
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
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_toupper(void)
{
		int		test;

	printf("\033[36m---------- TEST toupper ------------\033[00m\n");
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
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_strlen(void)
{
	int		test;

	printf("\033[36m---------- TEST strlen ------------\033[00m\n");
	test = 1;
	launch_strlen("toto", test);
	test++;
	launch_strlen("totot ma ejqijifjeif", test);
	test++;
	launch_strlen("fkebwkfbewkjfbk", test);
	test++;
	launch_strlen("dhaksdhkjsahdkajsdj", test);
}

void	test_puts(void)
{
	printf("\033[36m---------- TEST puts ------------\033[00m\n");
	ft_puts(0);
	puts(0);
	ft_puts("lolilol");
	puts("lolilol");
	ft_puts("Hello world");
	puts("Hello world");
}
void	launch_strdup(char *str, int test)
{
	if (strcmp(ft_strdup(str), strdup(str)) == 0)
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	launch_strdup_null(int test)
{
	if (ft_strdup(NULL) == NULL)
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);		
}

void	test_strdup(void)
{
	int 	test;

	printf("\033[36m---------- TEST strdup ------------\033[00m\n");
	test = 1;
	launch_strdup("", test);
	test++;
	launch_strdup("lolilol", test);
	test++;
	launch_strdup("toto", test);
	test++;
	launch_strdup("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", test);
	test++;
	launch_strdup_null(test);
}

void	launch_memcpy(char *src, int test)
{
	char dst[500];

	bzero(dst, 500);
	ft_memcpy(dst, src, ft_strlen(src));
	if (!strcmp(src, dst))
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_memcpy(void)
{
	int test;

	printf("\033[36m---------- TEST memcpy ------------\033[00m\n");
	test = 1;
	launch_memcpy("lolilol", test);
	test++;
	launch_memcpy("OLE", test);
	test++;
	launch_memcpy("", test);
	test++;
	launch_memcpy("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", test);
	test++;
}

void	launch_strcat(int test)
{
	char	buf[13];

	bzero(buf, 13);
	ft_strcat(buf, "");
	ft_strcat(buf, "Hel");
	ft_strcat(buf, "lo");
	ft_strcat(buf, " World.");
	ft_strcat(buf, "");
	if (!strcmp(buf, "Hello World."))
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	launch_strcat2(int test)
{
	char	buf[500];

	bzero(buf, 500);
	ft_strcat(buf, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,");
	ft_strcat(buf, " quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,");
	ft_strcat(buf, " sunt in culpa qui officia deserunt mollit anim id est laborum.");
	if (!strcmp(buf, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."))
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_strcat(void)
{
	int test;

	printf("\033[36m---------- TEST strcat ------------\033[00m\n");
	test = 1;
	launch_strcat(test);
	test++;
	launch_strcat2(test);
}

void	launch_bzero(int test)
{
	char	control[10];
	char	subject[] = "123456789";

	bzero(control, 10);
	ft_bzero(subject, 10);
	if (!memcmp(control, subject, 10))
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	launch_bzero2(int test)
{
	char	control[] = "123456789";
	char	subject[] = "123456789";

	bzero(control, 3);
	ft_bzero(subject, 3);
	if (!memcmp(subject, control, 10))
		printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
}

void	test_bzero(void)
{
	int test;

	test = 1;
	printf("\033[36m---------- TEST bzero ------------\033[00m\n");
	launch_bzero(test);
	test++;
	launch_bzero2(test);
}

void	launch_memset(int test)
{
	char    b1[100], b2[100];

    ft_memset(b1, 42, 100);
    memset(b2, 42, 100);
    if (memset(b1, 99, 0) == ft_memset(b1, 99, 0))
    	printf("TEST%d [\033[36mOK\033[00m]\n", test);
	else
		printf("TEST%d ERROR\n", test);
	if (!memcmp(b1, b2, 100))
    	printf("TEST%d [\033[36mOK\033[00m]\n", test++);
	else
		printf("TEST%d ERROR\n", test++);
    b1[0] = 1;
    ft_memset(b1, 0, 0);
    if (b1[0] == 1)
    	printf("TEST%d [\033[36mOK\033[00m]\n", test++);
	else
		printf("TEST%d ERROR\n", test++);
}

void	test_memset(void)
{
	int test;

	test = 1;
	printf("\033[36m---------- TEST memset ------------\033[00m\n");
	launch_memset(test);

}

void	test_cat(void)
{
	int fd;

	printf("\033[36m---------- TEST cat ------------\033[00m\n");
	puts("\033[95mTest with cat fd == 0, press ctrl + d to stop the test\033[00m");
	ft_cat(0);
	fd = open("./Makefile", O_RDONLY);
	ft_cat(fd);
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
	test_puts();
	test_strdup();
	test_memcpy();
	test_strcat();
	test_bzero();
	test_memset();
	test_cat();
	return (0);
}