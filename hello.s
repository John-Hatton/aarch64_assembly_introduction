.global _start

_start:
    mov x0, #1 // stdout file descriptor
    ldr x1, =message // address of message
    mov x2, #8 // message length
    mov x8, #64 // system call for write
    svc #0 // call kernel

    mov x0, #0 // return value
    mov x8, #93 // system call for exit
    svc #0 // call kernel


loop:
    b loop  // endless loop

message:
    .ascii "Servus!\n"
