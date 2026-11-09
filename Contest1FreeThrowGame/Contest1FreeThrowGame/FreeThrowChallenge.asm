INCLUDE Irvine32.inc 

.data

;Game Title
titleMsg BYTE "===== FREE THROW CHALLENGE!!! =====", 0

;Shooting Power Input
promptMsg BYTE "Please enter your shooting power (1-10): ", 0
shootingPower DWORD ?

;Shooting Angle Input
angleMsg BYTE "Please enter your shooting angle (1-90): ", 0
shootingAngle DWORD ?


;Main menu messages and choice
menuMsg BYTE "1. Start Game", 13,10, "2. Exit", 0 
choiceMsg BYTE "Enter your choice: ", 0
menuChoice DWORD ?

;Shot made/missed messages
madeMsg BYTE "SHOT MADE!", 0
missedMsg BYTE "SHOT MISSED!", 0

;Score and shot number variables
score DWORD 0
shotNumber DWORD 1
shotNumberMsg BYTE "Shot Number: ", 0

;Final score messages
finalMsg BYTE "GAME OVER! Final Score: ", 0
outOfMsg BYTE " out of 5", 0

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
CheckShot PROC
    ;Check shooting angle
    cmp shootingAngle, 40
    jl Missed
    cmp shootingAngle, 50
    jg Missed
    
    ;Check shooting power
    cmp shootingPower, 5
    jl Missed
    cmp shootingPower, 7
    jg Missed

    ;Increase the    score if the shot is made
    inc score
    mov edx, OFFSET madeMsg
    jmp ShowResult

Missed:
    mov edx, OFFSET missedMsg

ShowResult:
    call WriteString
    call Crlf
    ret
CheckShot ENDP


; Create procedure to display final score
ShowFinalScore PROC
    call Crlf
    mov edx, OFFSET finalMsg
    call WriteString
    mov eax, score
    call WriteDec
    mov edx, OFFSET outOfMsg
    call WriteString
    call Crlf
    ret
ShowFinalScore ENDP

;MAIN
main PROC
    ;Display game title
	mov edx, OFFSET titleMsg
	call WriteString
	call Crlf
	

    ;Call Main Menu Procedure
    call ShowMenu
    cmp menuChoice, 2 
    je EndGame

    ;Initialize score and shot number
    mov score, 0
    mov shotNumber, 1

; Create the loop for 5 shooting attempts
ShotLoop:
    ;Display the current shot number
    mov edx, OFFSET shotNumberMsg
    call WriteString
    mov eax, shotNumber
    call WriteDec
    call Crlf

    ;Call shooting power procedure
    call GetPower
    call Crlf

    ;Call shooting angle procedure
    call GetAngle
    call Crlf

    ;Call shot calculation procedure
    call CheckShot

    ;Move to the next shot and repeat for 5 times 
    inc ShotNumber
    cmp ShotNumber, 5
    jle ShotLoop


    ; Display final score
    call ShowFinalScore

EndGame: 
	exit
main ENDP

END main

