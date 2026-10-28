INCLUDE Irvine32.inc 

.data
titlemsg BYTE "===== FREE THROW CHALLENGE!!! =====", 0


.code
main proc
	mov edx, OFFSET titlemsg
	call WriteString
	call Crlf
	exit
main ENDP

END main

