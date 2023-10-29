REPORT Z_BOOLEAN_AND_RELATION_OPERATORS
*
************************************************************************
* Task: Use most of Boolean and Relation Operator then write out the result!
************************************************************************
* Example:
*  Is 1 equal 1 ? - yes
*  Is 100 BETWEEN 5 AND 99? - no
*  Is '123456789' contains any character of the alphabetic? - no
*  Is '1234567890' contains only numbers ? - yes
*-----------------------------------------------------------------------
* What commands do you need to learn and use?
* - CONSTANTS, DATA
* - COND
* - Relation operators: ~ Equal: =, EQ
*                       ~ Not Equal: <>, NE
*                       ~ Less Then: <, LT
*                       ~ Greater Then: >, GT
*                       ~ Less Equal:  <=, LE
*                       ~ Greater Equal >=, GE,
*                       ~ BETWEEN, 
*                       ~ IS INITIAL,
*                       ~ IS NOT INITIAL.
* - Relation operators for Character like data:
*                       ~ Contains Only: CO,
*                       ~ Contains Not Only: CN,
*                       ~ Contains Any: CA,
*                       ~ Contains Not Any: NA,
*                       ~ Contains String: CS,
*                       ~ Contains No String: NS,
*                       ~ Covers Pattern: CP,
*                       ~ No Pattern: NP.
* - Boolean operators:  ~ AND,
*                       ~ OR,
*                       ~ EQUIV ,
*                       ~ NOT,
*                       ~ ( ) parenthesis.
* What other information is good to know?
* - All of the Predicate Expressions with IS:
*     ~ operand          IS [NOT] INITIAL,
*     ~ referance        IS [NOT] BOUND,
*     ~ object_referance IS [NOT] INSTANCE OF class,
*     ~ <field_symbol>   IS [NOT] ASSIGNED,
*     ~ parameter        IS [NOT] SUPPLIED. Note: Method, function modul and subroutine paramters not selection screen paramters.
* - IN and WHERE operand also useful.
* 
* If you get stuck use ABAP Keyword Documentation [ F1 ] on the command!
*-----------------------------------------------------------------------

CONSTANTS: alphabetic TYPE string 'ABCDEFGHIJKLMNOPQRSTXYZ',
           numbers    TYPE string '0123456789'.

DATA result TYPE flag. "or abap_bool

result = COND #( WHEN 1 EQ 1 THEN 'X' ELSE space ).
write result.

