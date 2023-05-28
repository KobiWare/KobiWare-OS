#include "boot.c"

void _cdecl cstart_(uint16_t bootDrive)
{
    bootMessages();
    for (;;)
        ;
}
