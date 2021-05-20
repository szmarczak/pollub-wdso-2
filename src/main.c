#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include <errno.h>
#include <string.h>

char* filename;

void help() {
	printf("Usage: %s length\n", filename);
	printf("\n");
	printf("This program calculates area of a square and volume of a cube.\n");
	printf("Length is a double that is greater than 0.\n");
	exit(0);
}

int main(int argc, char** argv) {
	filename = argv[0];

	if (argc != 2) {
		help();
	}

	double result = strtod(argv[1], NULL);

	if (errno != 0) {
		printf("%s\n", strerror(errno));
	}

	if (result <= 0) {
		help();
	}

	printf("Given: %f\n", result);

	return 0;
}
