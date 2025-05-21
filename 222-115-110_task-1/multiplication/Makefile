all:
	gcc -o multiplication multiplication.c
	gcc -E multiplication.c > multiplication.i 
	gcc -S -masm=intel multiplication.i
	as -o multiplication.o multiplication.s
	objdump -M intel -d multiplication.o > multiplication.dump