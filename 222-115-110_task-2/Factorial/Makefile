all:
	gcc -o Factorial fact.c
	gcc -E fact.c > fact.i 
	gcc -S -masm=intel fact.i
	as -o fact.o fact.s
	objdump -M intel -d fact.o > fact.dump