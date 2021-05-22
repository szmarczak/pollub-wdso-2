build/%.o: src/%.c
	mkdir -p $(dir $@)
	gcc -I include -c $< -o $@

lib/lib%.wdso2.so: build/%.o
	mkdir -p $(dir $@)
	gcc -I include -shared $< -o $@

lib/lib%.wdso2.a: build/%.o
	mkdir -p $(dir $@)
	ar rs $@ $<

.PHONY: build
build: build/main.o lib/libvolume.wdso2.so lib/libarea.wdso2.a
	gcc -I include -L lib $< -lvolume.wdso2 -larea.wdso2 -o wdso2

.PHONY: install
install: build
	mv lib/libvolume.wdso2.so /usr/lib
	mv wdso2 /usr/bin

.PHONY: uninstall
uninstall:
	rm -f /usr/lib/libvolume.wdso2.so /usr/bin/wdso2

.PHONY: clean
clean:
	rm -rf build lib wdso2
