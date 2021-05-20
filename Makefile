build:
	gcc src/main.c -o wdso2

clean:
	rm -f *.o *.a *.so wdso2
