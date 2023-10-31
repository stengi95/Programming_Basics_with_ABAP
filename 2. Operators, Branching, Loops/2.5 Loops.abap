REPORT Z_LOOPS
*
************************************************************************
* Task: Replace the redundant iteration with LOOPS:
*       - APPEND 10 random number to the internal table with WHILE and
*         APPEND 20 random number to the internal table with DO.
*       - WRITE out the content of the internal table with LOOP AT.
* HARD: - WRITE out the content of the internal table with WHILE.                 
************************************************************************
* What commands do you need to learn and use?
* - DATA, WRITE, DO, WHILE, LOOP AT
* What other information is good to know?
* - LOOP AT: ~ For this you need an internal table which is in third task
*              group so an example internat tables has been created for this.
             ~ After the INTO you need a work area which is defined in the 
*              example.
* - WHILE: For this you need a plus variable which you use to stop the loop.
* - You can define the number of lines in the internal table with:
*   number_of_rows = lines( internal_table ).
* - There are two more loop exist: FOR, Select loop: SELECT, ENDSELECT.
* If you get stuck use ABAP Keyword Documentation [ F1 ] on the command!
*-----------------------------------------------------------------------

* 0. Preparation
" We need an stucture type for the table
TYPES: BEGIN OF structure_type,
              random_number TYPE i,
      END OF structure_type_type.

" We also need an internal table and a work area.
DATA: internal_table TYPE STANDARD TABLE OF structure_type,
      work_area LIKE LINE OF internal_table,
      random_number_object TYPE REF TO cl_abap_random_int.

" This is class method call what we will learn it in a different task group.
random_number_object = cl_abap_random_int=>create( seed = CONV i( sy-uzeit ) min  = 1 max = 100 ).

* A redundant iteration what we can replace with loops:
" 1. Filling the internal table with random numbers 
work_area-random_number = random_number_object->GET_NEXT( ).
APPEND work_area TO internal_table.
work_area-random_number = random_number_object->GET_NEXT( ).
APPEND work_area TO internal_table.
work_area-random_number = random_number_object->GET_NEXT( ).
APPEND work_area TO internal_table.
work_area-random_number = random_number_object->GET_NEXT( ).
APPEND work_area TO internal_table.
work_area-random_number = random_number_object->GET_NEXT( ).
APPEND work_area TO internal_table.
work_area-random_number = random_number_object->GET_NEXT( ).
APPEND work_area TO internal_table.
work_area-random_number = random_number_object->GET_NEXT( ).
APPEND work_area TO internal_table.

" 2. Writing out the content of the table
WRITE / internal_table[ 1 ]-random_number.
WRITE / internal_table[ 2 ]-random_number.
WRITE / internal_table[ 3 ]-random_number.
WRITE / internal_table[ 4 ]-random_number.
WRITE / internal_table[ 5 ]-random_number.
WRITE / internal_table[ 6 ]-random_number.
WRITE / internal_table[ 7 ]-random_number.







