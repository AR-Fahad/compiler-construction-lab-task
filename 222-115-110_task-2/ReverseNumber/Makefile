all:
	gcc -o ReverseNumber reverse.c
	gcc -E reverse.c > reverse.i 
	gcc -S -masm=intel reverse.i
	as -o reverse.o reverse.s
	objdump -M intel -d reverse.o > reverse.dump