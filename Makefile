# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sroggens <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/19 01:49:17 by sroggens          #+#    #+#              #
#    Updated: 2022/10/25 13:09:57 by sroggens         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME  = libftprintf.a

SRCS = ft_printf.c ft_printf2.c ft_putcharprintf.c \

OBJECTS = $(SRCS:.c=.o)

CC = gcc

CFLAGS = -Wall -Wextra -Werror

all : $(NAME)

$(NAME) : $(OBJECTS)
	ar rc $@ $?

%.o: %.c
	$(CC) $(CFLAGS) -c $? -o $@

clean :
	rm -f $(OBJECTS)

fclean : clean
	rm -f $(NAME)

re : fclean all
