all:
	gcc -o EvenOdd even-odd.c
	gcc -E even-odd.c > even-odd.i 
	gcc -S -masm=intel even-odd.i
	as -o even-odd.o even-odd.s
	objdump -M intel -d even-odd.o > even-odd.dump