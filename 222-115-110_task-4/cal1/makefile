input = input.txt
output = output.txt

main:
	bison -d cal1.y 
	flex cal1.l 
	gcc cal1.tab.c lex.yy.c
	a.exe <$(input)> $(output)