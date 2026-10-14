; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	mov	eax,3				
	mov	ebx,4
	mov ecx,5
	mov edx,6

	add eax, ebx
	add ecx, edx
	sub eax, ecx

	invoke ExitProcess,0
main endp
end main

;copied code from class to make sure repository is working and ready to be modified. will remove after everything is working successfully
