IDENTIFICATION DIVISION. 
PROGRAM-ID. SOLUTION. 
ENVIRONMENT DIVISION. 
INPUT-OUTPUT SECTION. 
FILE-CONTROL. 
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL. 
      
DATA DIVISION. 
    FILE SECTION. 
    FD SYSIN. 
    01 INPUT-STRING PIC X(255). *> This variable will hold a line of input from stdin.
    88 EOF VALUE HIGH-VALUES. 
 
PROCEDURE DIVISION. 
    OPEN INPUT SYSIN 
    READ SYSIN 
    AT END SET EOF TO TRUE 
    END-READ 
    DISPLAY "Hello, World.". 

    *> Write your code here to print the contents of the variable to stdout.
    DISPLAY INPUT-STRING. 
    CLOSE SYSIN.
      
STOP RUN.
