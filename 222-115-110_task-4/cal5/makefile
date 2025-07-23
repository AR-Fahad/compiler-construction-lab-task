input = input.txt
output = output.txt

main:
	bison -d cal5.y 
	flex cal5.l 
	gcc cal5.tab.c lex.yy.c
	a.exe <$(input)> $(output)