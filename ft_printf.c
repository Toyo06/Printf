/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sroggens <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/21 10:48:16 by sroggens          #+#    #+#             */
/*   Updated: 2022/10/25 13:21:29 by sroggens         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_printf(const char *txt, ...)
{
	int		i;
	int		count;
	va_list	params;

	va_start(params, txt);
	i = 0;
	count = 0;
	while (txt[i])
	{
		if (txt[i] == '%')
		{
			i++;
			ft_selectnextwords(params, txt[i], &count);
		}
		else
			ft_putcharprintf(txt[i], &count);
		i++;
	}
	va_end(params);
	return (count);
}
