#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char ** args) {
 	long i=0;
    long a= INT64_MAX;
	char *endptr;
    long max = strtoll(args[1], &endptr, 10);

	printf("%ld\n", max);

	long max_4 = max - max%8;
    while ((i++) < max_4) {
		a=a-i++;
		a=a-i++;
		a=a-i++;
		a=a-i++;
		a=a-i++;
		a=a-i++;
		a=a-i++;
		a=a-i;
	}
    while ((i++) < max) {
		a=a-i;
	}


	printf("%ld\n", a);

	return 0;
}
