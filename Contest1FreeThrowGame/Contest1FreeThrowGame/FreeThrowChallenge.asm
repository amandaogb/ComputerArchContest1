INCLUDE Irvine32.inc 

.data
titleMsg BYTE "===== FREE THROW CHALLENGE!!! =====", 0
promptMsg BYTE "Please enter your shooting power (1-10): ", 0
shootingPower DWORD ?

; Shooting angle input
angleMsg BYTE "Please enter your shooting angle (1-90): ", 0
shootingAngle DWORD ?


; Add main menu messages
menuMsg BYTE "1. Start Game", 13,10, "2. Exit", 0 
choiceMsg BYTE "Enter your choice: ", 0
menuChoice DWORD ?

; Add shooting angle message and variable


; Add shot made/missed messages


; Add score and shot number variables


; Add final score message


.code
; Create procedure to display main menu
ShowMenu PROC
    mov edx, OFFSET menuMsg
    call WriteString
    call Crlf
    mov edx, OFFSET choiceMsg
    call WriteString
    call ReadInt
    mov menuChoice, eax
    ret
ShowMenu ENDP

; Create procedure to get shooting power
GetPower PROC
mov edx, OFFSET promptMsg
	call WriteString
	call ReadInt
	mov shootingPower, eax
	ret
GetPower ENDP
; Create procedure to get shooting angle
GetAngle PROC
    mov edx, OFFSET angleMsg
    call WriteString
    call ReadInt
    mov shootingAngle, eax
    ret
GetAngle ENDP

; Create procedure to check if shot is made or missed


; Increase score if shot is made

; Create procedure to display final score
main proc
	mov edx, OFFSET titleMsg
	call WriteString
	call Crlf
	
    call ShowMenu
    cmp menuChoice, 2 
    je EndGame

	call GetPower

    call Crlf
    call GetAngle

	; Call main menu procedure
    ; Initialize score and shot number
    ; Create loop for 5 shooting attempts
    ; Display current shot number
    ; Call shooting power procedure
    ; Call shooting angle procedure
    ; Call shot calculation procedure
    ; Display final score

EndGame: 
	exit
main ENDP

END main

