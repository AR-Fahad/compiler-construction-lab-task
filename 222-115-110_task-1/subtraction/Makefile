all:
	gcc -o subtraction subtraction.c
	gcc -E subtraction.c > subtraction.i 
	gcc -S -masm=intel subtraction.i
	as -o subtraction.o subtraction.s
	objdump -M intel -d subtraction.o > subtraction.dump