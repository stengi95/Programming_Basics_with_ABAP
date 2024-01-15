REPORT ZXY_R_BLAMING_REPORT
*
" -----------------------------------------------------------------------
" Task: Create Variables, Constants and Structures (Work Areas)
" -----------------------------------------------------------------------
" What commands do you need to learn and use?
" - TYPES, DATA, CONSTANT
" -----------------------------------------------------------------------
" 1. Do the same tasks (1-2-3-4) as 4.1 with command DATA.
" 2. Create 2-3 variable with default value.
" 3. Copy a data type of an another variable with LIKE command, check if the value in Debugger.
" 4. Create a DATA structure with default values.
" 5. Change the VALUE of the variables which created in 2, 3 and 4.
" 6. Create 2-3 constant, then try to change it's VALUE (don't worry if you can't change them).

" + 1: Create a structure/work area with MARA type then populate some of it's fields.

" Hint: Add header for the main blocks of your program and group by COMMAND

" -----------------------------------------------------------------------
" Type and Data Declaration
" -----------------------------------------------------------------------
" 1. Example
DATA: BEGIN OF gs_custom_type,
        identifier            TYPE char20,
        general_material_data TYPE mara,
        messages              TYPE bapiret2_t,
      END OF gs_custom_type.

DATA  BEGIN OF gs_sflight.
        INCLUDE TYPE sflight.
DATA:   custom_field TYPE flag,
      END OF gs_sflight.

DATA: BEGIN OF gs_spfli,
        spfli        TYPE spfli,
        custom_field TYPE flag,
      END OF gs_spfli.

DATA: BEGIN OF gs_scarr,
        scarr_db  TYPE scarr,
        scarr_new TYPE scarr,
      END OF gs_scarr.

" 2. Example
DATA gv_integer  TYPE i       VALUE 5.
DATA gv_flag     TYPE flag    VALUE 'X'.
DATA gv_name     TYPE string  VALUE 'John Doe'.

" 3. Example
DATA gv_checkbox LIKE gv_flag.

" 4. Example
DATA: BEGIN OF gs_country,
        country_longtext TYPE string VALUE 'Germany',
        country_code     TYPE char2  VALUE 'DE',
      END OF gs_country.

" + 1.
DATA: gs_mara TYPE mara.

" 6. Example
CONSTANTS cv_pi TYPE p LENGTH 8 DECIMALS 14 VALUE '3.14159265358979'.

CONSTANTS: BEGIN OF cs_sap_ag,
             zip_code TYPE n LENGTH 5 VALUE '69189',
             city     TYPE string     VALUE `Walldorf`,
             country  TYPE string     VALUE `Germany`,
           END OF cs_sap_ag.

" -----------------------------------------------------------------------
" Main Program
" -----------------------------------------------------------------------
START-OF-SELECTION.

" 5. Example
gv_flag     = space.
gv_integer  = 12.
gv_name     = 'Luke Skywalker'.
gv_checkbox = 'X'.

gs_country-country_longtext = 'United States'.
gs_country-country_code     = 'US'.

" 6. Example
cv_pi     = 3.
cs_sap_ag = VALUE #( zip_code = '12345' city = 'Atlantis' country = 'Sea' ).

" + 1
gs_mara-matnr = '0000325489'.
gs_mara-meins = 'KG'.

  BREAK-POINT.




           
      
