;LCD Interfacing with 8051 microcontroller
MOV A, #38H; To intialize 16x2 LCD
ACALL COMNWRT
ACALL DELAY
MOV A, #0EH; Display on, Cursor blinking
ACALL COMNWRT
ACALL DELAY
MOV A, #01H; Clear display screen
ACALL COMNWRT
ACALL DELAY
MOV A, #06H; Increment Cursor
ACALL COMNWRT
ACALL DELAY
MOV A, #84H; 4th Position 1st Line
ACALL COMNWRT
ACALL DELAY
MOV A, #'G'
ACALL DATAWRT
ACALL DELAY
MOV A, #'O'
ACALL DATAWRT
ACALL DELAY
MOV A, #'D'
ACALL DATAWRT
ACALL DELAY
HERE:SJMP HERE

COMNWRT: MOV P1,A
CLR P3.5
SETB P3.7
ACALL DELAY
CLR P3.7
RET
DATAWRT:MOV P1,A
SETB P3.5
SETB P3.7
ACALL DELAY
CLR P3.7
RET 
DELAY: MOV R1,#0FFH
L1:DJNZ R1,L1
RET