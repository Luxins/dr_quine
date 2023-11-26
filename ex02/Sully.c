#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int	main(void)
{
	int	i = 5;
	if (!access("Sully_5.c", R_OK))
		--i;
	char	t[15];
	char	o[15];
	char	cmd[80];
	char	*quineStr = "#include <stdio.h>%1$c#include <unistd.h>%1$c#include <stdlib.h>%1$c%1$cint	main(void)%1$c{%1$c	int	i = %2$d;%1$c	if (!access(%4$cSully_5.c%4$c, R_OK))%1$c	--i;%1$c	char	t[15];%1$c	char	o[15];%1$c	char	cmd[80];%1$c	char	*quineStr = %4$c%3$s%4$c;%1$c%1$c	sprintf(t, %4$cSully_%%d.c%4$c, i);%1$c	sprintf(o, %4$cSully_%%d%4$c, i);%1$c	sprintf(cmd, %4$cgcc -Werror -Wextra -Wall %%1$s -o %%2$s; ./%%2$s%4$c, t, o);%1$c	FILE	*child = fopen(t, %4$cw%4$c);%1$c	fprintf(child, quineStr, 10, i, quineStr, 34);%1$c	fclose(child);%1$c	if (i > 0)%1$c		system(cmd);%1$c	return (0);%1$c}%1$c";

	sprintf(t, "Sully_%d.c", i);
	sprintf(o, "Sully_%d", i);
	sprintf(cmd, "gcc -Werror -Wextra -Wall %1$s -o %2$s; ./%2$s", t, o);
	FILE	*child = fopen(t, "w");
	fprintf(child, quineStr, 10, i, quineStr, 34);
	fclose(child);
	if (i > 0)
		system(cmd);
	return (0);
}
