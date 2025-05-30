all:
	gcc -o LeapYear leap.c
	gcc -E leap.c > leap.i 
	gcc -S -masm=intel leap.i
	as -o leap.o leap.s
	objdump -M intel -d leap.o > leap.dump