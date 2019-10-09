NASM=nasm


SRC := $(wildcard *.asm)
OBJ := $(wildcard *.o)


all: boot.bin 


boot.bin: boot.asm
	nasm -f bin $^   -o $@


.PHONY clean:
	rm *.o
	rm *.bin

#entrypoint.o: entrypoint.asm
#	nasm -f elf $^ -o $@


#	nasm -felf32 $^ -o boot.o
#	#i686-elf-as boot.s -o boot.o
