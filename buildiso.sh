cd ./build
cp bootloader.bin cdcontents
cp kernel.bin cdcontents
cp KobiWareOS.img cdcontents
mkisofs -o KobiWareOS.iso -V KobiWareOS -b KobiWareOS.img cdcontents