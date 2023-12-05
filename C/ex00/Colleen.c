#include<stdio.h>
/*
	one
*/

void useless(void)
{}

int main(void)
{
	char	*program = "#include<stdio.h>%1$c/*%1$c	one%1$c*/%1$c%1$cvoid useless(void)%1$c{}%1$c%1$cint main(void)%1$c{%1$c	char	*program = %2$c%3$s%2$c;%1$c	printf(program, 10, 34, program, 34);%1$c	/*%1$c		two%1$c	*/%1$c	useless();%1$c	return (0);%1$c}%1$c";
	printf(program, 10, 34, program, 34);
	/*
		two
	*/
	useless();
	return (0);
}
