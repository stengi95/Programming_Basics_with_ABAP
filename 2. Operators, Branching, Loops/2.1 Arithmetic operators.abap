REPORT Z_ARMITHMETIC_OPERATORS
*
************************************************************************
* Task: Use every Aritmethic Operator at least once then write them out.
*       Check if every decimal is writen out, if not create a new variable
************************************************************************
* Example:
* 12 + 2
* 12 + π
* 12 - 2
* 12 - π
* 12 * 2
* 12 * π
* 12 / 2
* 12 / π
* 12 DIV 2
* 12 MOD π
* 12 ** 2
* 12 ** π
*-----------------------------------------------------------------------
* What commands do you need to learn and use?
* - CONSTANT, DATA, + (OR ADD), -, *, /, DIV, MOD, and **.
* What other information is good to know?
* - There is a system sturcture where the date is kept, the sturcture 
*   name is sy (in the dictionary syst) and the date field is datum.
*   (sy-datum)
* - You can assign (or write) the whole variable or a part of it.
*   sy-datum is a 8 lenght long character field, but you can use the 
*   the first 4 character to define the current year with this syntax:
*   sy-datum(4). Example: If today is 20231029 then it will be 2023.
* If you get stuck use ABAP Keyword Documentation [ F1 ] on the command!
*-----------------------------------------------------------------------

CONSTANTS: twelve TYPE i VALUE 12,
           two TYPE i VALUE 2,
           pi TYPE p LENGTH 8 DECIMALS 14 VALUE '3.14159265358979'.

DATA this_year TYPE i.

ADD 2023 to this_year.
"If the current year is not 2023 you can use this:
"ADD sy-datum(4) to this_year.

WRITE this_year.

"Your turn!

           
      
