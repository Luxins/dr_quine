#include<stdio.h>
// one

int main(void)
{
	char	*program = "#include<stdio.h>%c// one%c%cint main(void)%c{%c	char	*program = %c%s%c;%c	printf(program, 10, 10, 10, 10, 10, 34, program, 34, 10, 10, 10, 10, 10, 10, 10, 10);%c	// two%c	return (0);%c}%c%cvoid useless(void)%c{}%c";
	printf(program, 10, 10, 10, 10, 10, 34, program, 34, 10, 10, 10, 10, 10, 10, 10, 10);
	// two
	return (0);
}

void useless(void)
{}
