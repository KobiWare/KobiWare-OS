org 0x0
bits 16


%define ENDL 0x0D, 0x0A


start:
    ; print hello world message
    mov si, msg_hello
    call puts
    mov si, msg_wip
    call puts

.halt:
    cli
    hlt

;
; Prints a string to the screen
; Params:
;   - ds:si points to string
;
puts:
    ; save registers we will modify
    push si
    push ax
    push bx

.loop:
    lodsb               ; loads next character in al
    or al, al           ; verify if next character is null?
    jz .done

    mov ah, 0x0E        ; call bios interrupt
    mov bh, 0           ; set page number to 0
    int 0x10

    jmp .loop

.done:
    pop bx
    pop ax
    pop si    
    ret

msg_hello: db 'Welcome to KobiWare OS!', ENDL, 0
msg_wip: db 'KobiWare OS is currently a work in progress, please expect bugs and please do not use this as an actual operating system.', ENDL, 0
