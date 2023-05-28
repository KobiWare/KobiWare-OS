#build the floppy image first
make
cd ./build

#build the cd image iso
cd ./build
cp bootloader.bin cdcontents
cp kernel.bin cdcontents
cp KobiWareOS.img cdcontents
mkisofs -o KobiWareOS.iso -V KobiWareOS -b KobiWareOS.img cdcontents

#run floppy image version in qemu
qemu-system-i386 -fda KobiWareOS.img