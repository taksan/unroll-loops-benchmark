#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char ** args) {
 	register long i=0;
    register long a= INT64_MAX;
	char *endptr;
    register long max = strtoll(args[1], &endptr, 10);

	printf("%ld\n", max);

    while ((i++) < max)
		a=a-i;
	printf("%ld\n", a);

	return 0;
}
