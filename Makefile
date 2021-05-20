build:
	# Make sure `lib` directory exists
	mkdir -p lib

	# Create shared `volume` library
	gcc -I include -shared src/volume.c -o lib/libvolume.wdso2.so

	# Create static `area` library
	gcc -I include -c src/area.c -o lib/area.o
	ar rs lib/libarea.wdso2.a lib/area.o

	# Build the executable
	gcc -I include -L lib src/main.c -lvolume.wdso2 -larea.wdso2 -o wdso2

install: build
	mv lib/libvolume.wdso2.so /usr/lib
	mv wdso2 /usr/bin

uninstall:
	rm -f /usr/lib/libvolume.wdso2.so /usr/bin/wdso2

clean:
	rm -f *.o *.a *.so wdso2
