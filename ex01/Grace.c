#include <stdio.h>
#define FILE "Grace_kid.c"
#define SELF "#include <stdio.h>%c#define FILE %cGrace_kid.c%c%c#define SELF %c%s%c%c#define ACTION(x) int	main(void) {fprintf(fopen(FILE, %cw%c), SELF, 10, 34, 34, 10, 34, SELF, 34, 10, 34, 34, 10); return (0);}%cACTION(x)"
#define ACTION(x) int	main(void) {fprintf(fopen(FILE, "w"), SELF, 10, 34, 34, 10, 34, SELF, 34, 10, 34, 34, 10); return (0);}
ACTION(x)