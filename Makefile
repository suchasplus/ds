build:
	mkdir build && cd build && cmake -G "Unix Makefiles" .. && make

clean:
	rm -rf build
