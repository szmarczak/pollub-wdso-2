build:
	# Make sure `lib` directory exists
	mkdir -p lib

	# Create shared `volume` library
	gcc -I include -shared src/volume.c -o lib/volume.wdso2.so

	# Create static `area` library
	gcc -I include -c src/area.c -o lib/area.o
	ar rs lib/area.a lib/area.a

	gcc -I include src/main.c -o wdso2

clean:
	rm -f *.o *.a *.so wdso2
