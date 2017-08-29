##
## Makefile for  in /home/renard_e/2/asm_minilibc
## 
## Made by Gregoire Renard
## Login   <renard_e@epitech.net>
## 
## Started on  Fri Mar 10 17:18:31 2017 Gregoire Renard
## Last update Wed Mar 22 21:24:50 2017 Rodrigue René
##

NAME			= libasm.so

SRC			= src/strlen.S \
			  src/strncmp.S \
			  src/strcmp.S \
			  src/strchr.S \
			  src/strstr.S \
			  src/strpbrk.S \
			  src/strcspn.S \
			  src/rindex.S \
			  src/strcasecmp.S \
			  src/memcpy.S \
			  src/memmove.S \
			  src/memset.S \

OBJ			= $(SRC:.S=.o)

NASM			= nasm

NASMFLAGS		+= -f elf64 -Werror

LD			= ld

CC			= gcc

LDFLAGS			= -shared

RM			= rm -f


$(NAME):	$(OBJ)
		$(LD) $(LDFLAGS) -o $(NAME) $(OBJ)

all:		$(NAME)

%.o:		%.S
		$(NASM) $(NASMFLAGS) -o $@ $<
clean:
		$(RM) $(OBJ)

fclean:		clean
		$(RM) $(NAME)

re: fclean all

.PHONY: all re clean fclean
