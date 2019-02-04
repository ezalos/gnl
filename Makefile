# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldevelle <ldevelle@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/01/14 15:32:15 by ldevelle          #+#    #+#              #
#    Updated: 2019/02/04 03:53:28 by ldevelle         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=gnl

CC=gcc

CFLAGS=-Wall -Wextra -Werror

DFLAGS=-Wall -Wextra -Werror -fsanitize=address,undefined -g3

SRC = get_next_line.c

OBJ = get_next_line.o

test = test/123.txt

CFLAGS = $(DFLAGS)
all:		$(NAME)

$(NAME):	$(OBJ) get_next_line.h $(UPDATE)
			@$(CC) $(CFLAGS) $(OBJ) main.c ../libft/libft.a -o $@

$(OBJ):		$(SRC)
			@$(CC) $(CFLAGS) -c $(SRC)

$(UPDATE):
			update
clean:
			@rm -f $(OBJ)

fclean:		clean
			@rm -f $(NAME)
			@rm -rf gnl.dSYM

re: 		fclean all

update:
		cd libft | make re

git :
		@git add -A
		@git status
		@git commit -am "Makefile automated push"
		@git push

t:	re
	@./$(NAME) $(test)

r:	re
	@make v
	@make v
	@make v
	@make v
	@make v
	@make v
	@make v
	@make v
	@make v
	@make v

v:
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
	@./$(NAME) $(test)
