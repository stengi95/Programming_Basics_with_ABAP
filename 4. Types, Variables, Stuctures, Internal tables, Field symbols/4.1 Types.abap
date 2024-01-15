REPORT ZXY_R_BLAMING_REPORT
*
************************************************************************
* Task: Create a Report and Create Types
************************************************************************
* What commands do you need to learn and use?
* - TYPES, INCULDE, DATA, BREAKPOINT
************************************************************************
" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
" ! 0. Create a report with name ZXY_R_BLAMING_REPORT (Where XY is your name with 2 letter)!
" ! This report will be used in the upcoming tasks, it will be extended a couple of times !!
" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
************************************************************************
" 1. Create a type with custom fields (from your modul).
" - It can be any type of dictionary data element or structures even tables types.
" - It can be any predefined data types like I,F,P, CHAR, STRING.
" 2. Create a type while including structure fields (from your modul).
" 3. Create a type while including structure itself (from your modul).
" 4. Create a type while including structure itself twice for further database check (from your modul).
" + 1 Create DATA from the created types and check it in the debugger.
************************************************************************
" 1. Example:
TYPES:
  BEGIN OF gty_custom_type,
    identifier            TYPE char20,     " Predefined             | Good to know: (You will understand later)                                           |
    general_material_data TYPE mara,       " Dictionary Structure   | Every dictionary table can be used as structure in ABAP code, but it must be a      |
    messages              TYPE bapiret2_t, " Dictionary Table Type  | table type if you want to use it as a Table in Method or Function module parameter! |
  END OF gty_custom_type.
" Create variable so it can be checked in the debugger.
DATA gs_custom_data TYPE gty_custom_type.

************************************************************************
" 2. Example:
TYPES:
  BEGIN OF gty_sflight.
    INCLUDE TYPE sflight.
TYPES:
    custom_field TYPE flag,
  END OF gty_sflight.

" Create variable so it can be checked in the debugger.
DATA gs_sflight TYPE gty_sflight. "

************************************************************************
" 3. Example:
TYPES:
  BEGIN OF gty_spfli,
    spfli        TYPE spfli,
    custom_field TYPE flag,
  END OF gty_spfli.

" Create variable so it can be checked in the debugger.
DATA gs_spfli TYPE gty_spfli.

************************************************************************
" 4. Example:
TYPES:
  BEGIN OF gty_scarr,
    scarr_db  TYPE scarr,
    scarr_new TYPE scarr,
  END OF gty_scarr.

" Create variable so it can be checked in the debugger.
DATA gs_scarr TYPE gty_scarr.
************************************************************************
" + 1
START-OF-SELECTION.

  BREAK-POINT.




           
      
