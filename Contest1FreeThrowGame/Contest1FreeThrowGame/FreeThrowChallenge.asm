INCLUDE Irvine32.inc 

.data
titleMsg BYTE "===== FREE THROW CHALLENGE!!! =====", 0
promptMsg BYTE "Please enter your shooting power (1-10): ", 0
shootingPower DWORD ?


; Add main menu messages
; Add shooting angle message and variable
; Add shot made/missed messages
; Add score and shot number variables
; Add final score message

.code
; Create procedure to display main menu

; Create procedure to get shooting power

; Create procedure to get shooting angle

; Create procedure to check if shot is made or missed
; Increase score if shot is made

; Create procedure to display final score
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

