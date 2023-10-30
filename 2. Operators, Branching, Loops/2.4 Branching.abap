REPORT Z_BRANCHING
*
************************************************************************
* Task: Use IF and Case commands to control the flow of the program:
*      IF:
*       - Request a data from the user without type.
* 	- If the requsted data contains only alphabetic characters,
*         write out: It's a string.
*       - Else If the requested data contains only numbers,
*         write out: It's an intiger.
*       - Else write out: It contains numeric and alphabetic characters.
*      CASE:
*       - Request a number from the user with type char5.
*       - After the case command check the string lenght of the parameter
*       - WHEN its 1, write out the number and: 'is between 1 and 9.'
*       - WHEN its 2, write out the number and: 'is between 10 and 99.'
*       - WHEN its 3, write out the number and: 'is between 100 and 999.'
*       - WHEN its 4, write out the number and: 'is more then 1000.'
*       - WHEN OTHERS, it must be initial so write out: 'The parameter is initial!'
************************************************************************
* What commands do you need to learn and use?
* - DATA, PARAMTERS, IF, CASE, strlen( character_like_variable )
* What other information is good to know?
* - 
* If you get stuck use ABAP Keyword Documentation [ F1 ] on the command!
*-----------------------------------------------------------------------

CONSTANTS: alphabetic TYPE string VALUE 'ABCDEFGHIJKLMNOPQRSTXYZ',
           numbers    TYPE string VALUE '0123456789'.

* Example syntaxes: Using current user seconds as random number
IF sy-uzeit+4(2) MOD 2 EQ 0.                  
    WRITE: 'This number is even:', sy-uzeit+4(2).
ELSE.
    WRITE: 'This number is odd:', sy-uzeit+4(2).
ENDIF.

"Or
CASE sy-uzeit+5(1).
 WHEN 1 OR 3 OR 5 OR 7 OR 9.
     WRITE: 'This number is odd:', sy-uzeit+5(1).
 WHEN OTHERS.
     WRITE: 'This number is even:', sy-uzeit+5(1).
ENDCASE.

* Example for strlen: variable = strlen( character_like_paramtere ).

* Your turn!




