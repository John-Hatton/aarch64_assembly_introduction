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


	// This corresponds with ARMv7 sww, and is called the SuperVisor Call.
	// SVC of 0 corresponds to disabling the priveleged mode.

	SVC 0

.section .data
