/*
 * 	BabyStep.s
 *	
 *	Please see README.md for more info
 *	on how to assemble, and debug.
 *
 *	Please note, the .text and .data
 *	sections were only included for 
 *	future reference.
 */

.global _start

.section .text

_start:

	MOV x0, #30 // Move 30 to register x0 (immediate mode)


	/*
	 * We move 1 into Register x8, which is the register
	 * we store our syscall number in. 
	 *
	 * See https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md#arm64-64_bit
	 *
 	 * This link describes the different Linux Syscalls
	 * A syscall of 1 means io_destroy
 	 *
	 */
	MOV x8, #0x1 


	// This corresponds with ARMv7 swi, and is called the SuperVisor Call.
	// Invoke a software interrupt, which transfers control to the 
	// operating system kernel and triggers the system call handling routine 
	// to perform an action. In this case, the action is to terminate the 
	// program and return an exit status code to the calling process.

	SVC #0

.section .data
