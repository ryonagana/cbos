
all:
	make -C ./boot/
	make -C ./kernel/
#	grub-file --is-x86-multiboot2 civnufos.bin
#	mkdir -p ../iso/grub
#	cp   civnufos.bin ../iso/boot/
#	cp   ./grub_conf/grub.cfg  ../iso/grub/
#	grub-mkrescue -o ../civnufos.iso ../iso/


.PHONY run:
	#qemu-system-x86_64 

.PHONY clean:
	rm ./boot/*.o
	rm ./kernel/*.o
