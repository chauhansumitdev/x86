all: hello

hello: hello.o
	gcc -m32 -o hello hello.o -nostartfiles

hello.o: hello.asm
	nasm -f win32 hello.asm -o hello.o

clean:
	rm -f hello hello.o