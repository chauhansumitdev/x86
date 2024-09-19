ASM_FILES := $(wildcard *.asm)
OBJ_FILES := $(ASM_FILES:.asm=.o)
EXE_FILES := $(ASM_FILES:.asm=)

all: $(EXE_FILES)

$(EXE_FILES): %: %.o
	gcc -m32 -o $@ $< -nostartfiles

$(OBJ_FILES): %.o: %.asm
	nasm -f win32 $< -o $@

clean:
	rm -f $(EXE_FILES) $(OBJ_FILES)
