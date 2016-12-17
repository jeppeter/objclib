CC=clang

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc
SOURCE:= main.m

CFLAGS:= -Wall -Werror -g  
LDFLAGS:= ${LIBRARIES} ${FRAMEWORKS}

OUT:= -o main

all:main

main:main.o Person.o
	${CC}  ${LDFLAGS} -o $@ $^

%.o:%.m
	${CC} ${CFLAGS} -c $< -o $@  

clean:
	rm -f main main.o Person.o