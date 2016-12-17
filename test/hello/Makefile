CC=clang

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc
SOURCE:= main.m

CFLAGS:= -Wall -Werror -g -v $(SOURCE)
LDFLAGS:=${LIBRARIES} ${FRAMEWORKS}

OUT:= -o main

all:
	${CC} ${CFLAGS} ${LDFLAGS} ${OUT}

clean:
	rm -f main main.o
	rm -rf main.dSYM