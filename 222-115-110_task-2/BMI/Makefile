all:
	gcc -o BMI bmi.c
	gcc -E bmi.c > bmi.i 
	gcc -S -masm=intel bmi.i
	as -o bmi.o bmi.s
	objdump -M intel -d bmi.o > bmi.dump