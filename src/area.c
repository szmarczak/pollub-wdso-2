#include "area.h"

double areaOfSquare(double length) {
	return length * length;
}

double areaOfCube(double length) {
	return areaOfSquare(length) * 6;
}
