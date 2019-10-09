CC=i686-elf-gcc
LDFLAGS=-nostdlib -fno-use-linker-plugin -std=gnu99 -ffreestanding -O2 -Wall -Wextra 

INC= -I../include

SRCDIR := ./


SOURCES := $(wildcard $(SRCDIR)/*.c)
OBJECTS := $(patsubst $(SRCDIR)/%.c, $(SRCDIR)/%.o, $(SOURCES))

BINARY=base.bin

%.o: ../boot/%.asm
	nasm $< -f elf -o $@  

all:$(BINARY) kernel.bin

$(BINARY): $(OBJECTS)
	ld -m elf_i386 -o $@  -Ttext 0x1000 --oformat binary $^ 

kernel.bin: ../boot/boot.bin $(BINARY)
	cat $^ > ../kernel.z

%.o: %.c
	$(CC) $(CFLAGS) -c $^ $(LDFLAGS) -o $@ $(INC)


.PHONY clean:
	rm $(OBJECTS)
	rm ../boot/*.o

