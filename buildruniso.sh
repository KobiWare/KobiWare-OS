make
cd ./build
cp bootloader.bin cdcontents
cp kernel.bin cdcontents
cp KobiWareOS.img cdcontents
mkisofs -o KobiWareOS.iso -V KobiWareOS -b KobiWareOS.img cdcontents
qemu-system-x86_64 -cdrom KobiWareOS.iso