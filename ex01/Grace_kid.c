#include <stdio.h>
#define FILE "Grace_kid.c"
#define SELF "#include <stdio.h>%1$c#define FILE %2$cGrace_kid.c%2$c%1$c#define SELF %2$c%3$s%2$c%1$c#define ACTION(mode) int	main(void) {fprintf(fopen(FILE, mode), SELF, 10, 34, SELF); return (0);}%1$cACTION(%2$cw%2$c)%1$c/*%1$c	ljahn, 42-Wolfsburg%1$c*/"
#define ACTION(mode) int	main(void) {fprintf(fopen(FILE, mode), SELF, 10, 34, SELF); return (0);}
ACTION("w")
/*
	ljahn, 42-Wolfsburg
*/