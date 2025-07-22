input = input.txt
output = output.txt

main:
	bison -d cal3.y
	flex cal3.l
	gcc cal3.tab.c lex.yy.c
	a.exe <$(input)> $(output)
	