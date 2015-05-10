/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tcarmet <tcarmet@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/09 17:35:10 by tcarmet           #+#    #+#             */
/*   Updated: 2015/05/10 19:54:28 by tcarmet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

int		ft_isalnum(int c);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_tolower(int c);
int		ft_toupper(int c);
size_t	ft_strlen(char *str);
void	*ft_memset(void *b, int c, size_t len);
void	bzero(void *s, size_t n);
void	ft_puts(char *str);

#endif
