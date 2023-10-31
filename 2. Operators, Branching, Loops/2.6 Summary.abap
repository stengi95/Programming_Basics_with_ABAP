REPORT Z_SUMMARY
*
************************************************************************
* Task: Replace the redundant iteration with LOOPS:
*       - APPEND random number of random numbers to the internal table
*         using WHILE or DO. (or you can add 50 random numbers)
*       - WRITE out the content of the internal table with LOOP AT but.
*           ~ IF sy-tabix MOD 3 EQ 0, write an ULINE too.
*           ~ IF the current random_number Contains Any '0', change the
*             color of the WRITE to RED.  
************************************************************************
* What commands do you need to learn and use?
* - DATA, WRITE, ULINE, DO, WHILE, LOOP AT, IF, MOD, CA
* What other information is good to know?
* -
* If you get stuck use ABAP Keyword Documentation [ F1 ] on the command!
*-----------------------------------------------------------------------

* 0. Preparation
" We need an structure type for the table
TYPES: BEGIN OF structure_type,
              random_number TYPE i,
      END OF structure_type.

" We also need an internal table and a work area.
DATA: internal_table TYPE STANDARD TABLE OF table_type,
      work_area LIKE LINE OF internal_table,
      random_number_object TYPE REF TO cl_abap_random_int.

" This is class method call what we will learn it in a different task group.
random_number_object = cl_abap_random_int=>create( seed = CONV i( sy-uzeit ) min  = 1 max = 100 ).

* Example, for filling and writing out:
" 1. Filling the internal table with random numbers 
work_area-random_number = random_number_object->GET_NEXT( ).
APPEND work_area TO internal_table.

" 2. Writing out the content of the table
WRITE / internal_table[ 1 ]-random_number.








