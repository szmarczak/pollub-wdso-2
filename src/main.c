#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include <errno.h>
#include <string.h>

#include "area.h"
#include "volume.h"

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

	double length = strtod(argv[1], NULL);

	if (errno != 0) {
		printf("%s\n", strerror(errno));
	}

	if (length <= 0) {
		help();
	}

	printf("Area of square: %f\n", areaOfSquare(length));
	printf("Area of cube: %f\n", areaOfCube(length));
	printf("Volume of cube: %f\n", volumeOfCube(length));

	return 0;
}
