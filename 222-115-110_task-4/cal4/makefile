input = input.txt
output = output.txt

main:
	bison -d cal4.y 
	flex cal4.l 
	gcc cal4.tab.c lex.yy.c
	a.exe <$(input)> $(output)