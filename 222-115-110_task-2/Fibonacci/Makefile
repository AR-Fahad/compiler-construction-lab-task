all:
	gcc -o Fibonacci fibo.c
	gcc -E fibo.c > fibo.i 
	gcc -S -masm=intel fibo.i
	as -o fibo.o fibo.s
	objdump -M intel -d fibo.o > fibo.dump