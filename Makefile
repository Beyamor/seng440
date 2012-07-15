all: unoptimized

unoptimized: src/unoptimized.o
	gcc src/unoptimized.o -o bin/unoptimized -lm
