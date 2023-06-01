#include "stdio.h"
#include "stdint.h"

void _cdecl cstart_(uint16_t bootDrive)
{
    printf("Welcome to KobiWare OS!\r\n");
    printf("\n");
    printf("KobiWare OS is currently being actively developed by ONE person. Check out the operating system source code at https://github.com/KobiWare/KobiWare-OS!\r\n");
    printf("\n");
    printf("KobiWare OS is currently a work in progress, please expect bugs and please do not use this as an actual operating system.\r\n");
    printf("\n");
    printf("KobiWare OS is now loading...\r\n");

    for (;;)
        ;
}
