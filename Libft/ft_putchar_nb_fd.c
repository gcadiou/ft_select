/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putchar_nb_fd.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gcadiou <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/12/14 12:42:07 by gcadiou           #+#    #+#             */
/*   Updated: 2017/12/14 14:42:25 by gcadiou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putchar_nb_fd(int fd, char c, int size)
{
	int x;

	x = 0;
	while (x < size)
	{
		write(fd, &c, 1);
		x++;
	}
}