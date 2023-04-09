# aarch64 Assembly

### Baby Steps

---


## Introduction

This project is long overdue. I've been developing applications for devices that contain ARMv8
processors for a long time, and I have wanted to break into the assembly language. Here we go!

---

## Raspberry Pi 3

For this project, I chose to use a Raspberry Pi 3 for development. I figured I could cross-compile
and then use qemu or something else, but I found that I was happier with just spinning up a RPI,
connecting it to the network, and accessing the device via a secure shell (ssh). 

With all this in mind, I'm running Fedora Minimal 37 on the Rasperry Pi 3, and will outline several
of the packages I selected to assemble, link, and test this project, as well as debug it with GCC.


---

## Assembling







as -g -o <filename>.o <filename>.s -march=armv8-a

---

## Linking






ld -o <filename> <filename>.o

---

## Debugging with GDB





gdb <filename>




b _start

r 

info registers

stepi or nexti (step into or step over)

Note, if you would like to see the effect of your code, use stepi.
If you would like to skip a line, use nexti.  

x /s <address>


i.e. x /s 8000


Here are some useful GDB commands:

    start: start the program and pause before executing the first instruction.
    run: start the program and continue to the next breakpoint, if any.
    break: set a breakpoint at a line or address where you want to pause the program.
    delete: delete a breakpoint.
    info break: show all breakpoints.
    continue: continue the program until the next breakpoint.
    next: execute the next line of source code (step over function calls).
    step: execute the next line of source code (step into function calls).
    finish: continue execution until the current function returns.
    print: display the value of a variable or expression.
    display: display the value of a variable or expression after each step or continue.
    x/nfu addr: examine the memory at a given address, with the following options:
        n: number of units to display (default is 1).
        f: format (e.g. x for hexadecimal).
        u: unit size (e.g. b for byte, w for word, g for giant).
    info registers: display the contents of all registers.
    info registers register: display the contents of a specific register (e.g. info registers x0).
    layout asm: show the source code and assembly code side-by-side.
    layout reg: show the source code and register contents side-by-side.
    layout split: show the source code, assembly code, and register contents in separate windows.
    quit: exit gdb.




---

## Note on ARMv7 vs ARMv8

 
