INCLUDE Irvine32.inc 

.data
titleMsg BYTE "===== FREE THROW CHALLENGE!!! =====", 0
promptMsg BYTE "Please enter your shooting power (1-10): ", 0
shootingPower DWORD ?


.code
main proc
	mov edx, OFFSET titleMsg
	call WriteString
	call Crlf
	mov edx, OFFSET promptMsg
	call WriteString
	call ReadInt
	mov shootingPower, eax
	exit
main ENDP

END main

