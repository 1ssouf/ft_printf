# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ialousse <ialousse@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/06 09:51:37 by ajordan-          #+#    #+#              #
#    Updated: 2022/08/24 13:45:37 by ialousse         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
RM = rm -f
CC = gcc
FLAGS = -Wall -Wextra -Werror
NORMINETTE = norminette -R CheckDefine

SRCS = \
			ft_printf.c \
			ft_print_hex.c \
			ft_print_nbr.c \
			ft_print_percent.c \
			ft_print_ptr.c \
			ft_print_str.c \
			ft_print_unsigned.c \
			ft_printf_utils.c \

OBJS = ${SRCS:.c=.o}

all : ${NAME}

${NAME} : ${OBJS}
		ar rcs $@ $^

clean :
		${RM} ${OBJS}

fclean : clean
	${RM} ${NAME}

re : fclean all

.c.o: ${SRCS}
		${CC} ${FLAGS} -c $< -o ${<:.c=.o}

norm :
		${NORMINETTE}