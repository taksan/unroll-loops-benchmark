#include <stdint.h>
#include <stdio.h>

int main(int argc, char * args) {
 	long i=0;
    long a= INT64_MAX;
    long max = atoi(args[1]) ;// INT32_MAX * 4L;
	printf("%ld\n", max);

    while ((i++) < max)
		a=a-i;
	printf("%ld\n", a);

	return 0;
}
