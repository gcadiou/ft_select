# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gcadiou <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/12/02 22:19:05 by gcadiou           #+#    #+#              #
#    Updated: 2017/12/07 05:46:32 by gcadiou          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_select

SRC = main.c   \
	  error.c  \
	  parse.c

OBJ = $(SRC:.c=.o)

PATHLIB = ./Libft

LIB = $(PATHLIB)/libft.a

WFLAG = -Wall -Werror -Wextra

CURSEFLAG = -ltermcap

all: compilib $(NAME)

$(NAME): $(LIB) $(SRC)
	gcc $(SRC) $(LIB) $(CURSEFLAG) -I $(PATHLIB) -o $(NAME) $(WFLAG)

compilib:
	make -C $(PATHLIB)

.PHONY: compilib cleanlib clean fclean re

cleanlib:
	make clean -C $(PATHLIB)

clean: cleanlib
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
