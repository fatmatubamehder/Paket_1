*&---------------------------------------------------------------------*
*& Report ZFT_ABAP_4
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zft_abap_4.

TYPES: BEGIN OF gty_structure,
         id      TYPE n LENGTH 8,
         name    TYPE c LENGTH 40,
         surname TYPE c LENGTH 40,
         job     TYPE c LENGTH 20,
         salary  TYPE i,
         curr    TYPE c LENGTH 3,
         gsm     TYPE string,
         e_mail  TYPE string,
       END OF gty_structure.

DATA: gs_structure TYPE gty_structure,
      gt_table     TYPE TABLE OF gty_structure,
      gv_1 TYPE i.

gs_structure-id      = 12345.
gs_structure-name    = 'Mehmet'.
gs_structure-surname = 'Yilmaz'.
gs_structure-job     = 'Teacher'.
gs_structure-salary  = 3000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90123456789'.
gs_structure-e_mail  = 'mehmetyilmaz@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12346.
gs_structure-name    = 'Murat'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Doctor'.
gs_structure-salary  = 3400.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.


gs_structure-id      = 12347.
gs_structure-name    = 'Meral'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Developer'.
gs_structure-salary  = 3500.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12348.
gs_structure-name    = 'Mert'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Nurse'.
gs_structure-salary  = 3800.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12349.
gs_structure-name    = 'Merve'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Artist'.
gs_structure-salary  = 4000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12350.
gs_structure-name    = 'Merve'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Consultant'.
gs_structure-salary  = 5000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12351.
gs_structure-name    = 'Merve'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Taxi Driver'.
gs_structure-salary  = 5500.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12352.
gs_structure-name    = 'Merve'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Engineer'.
gs_structure-salary  = 6000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12353.
gs_structure-name    = 'Yasemin'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Teacher'.
gs_structure-salary  = 3500.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12354.
gs_structure-name    = 'Yakup'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Repairman'.
gs_structure-salary  = 7000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

*LOOP AT gt_table INTO gs_structure where surname = 'Öztürk' and salary > 5000.
*
**  CHECK gs_structure-salary > 5000.
**
**  gv_1 = gs_structure-salary * 2.
**
*  WRITE: sy-tabix,
*         gs_structure-id,
*         gs_structure-name,
*         gs_structure-salary,
*         gv_1.
*
**  WRITE: sy-tabix,
**         gs_structure-id,
**         gs_structure-name,
**         gs_structure-surname,
**         gs_structure-job,
**         gs_structure-salary,
**         gs_structure-curr,
**         gs_structure-gsm,
**         gs_structure-e_mail.
*
*  ULINE.
*  skip.
*
*ENDLOOP.

*READ TABLE gt_table INTO gs_structure WITH key salary = 5000.
*
*IF sy-subrc is INITIAL.
*
*  gs_structure-salary = gs_structure-salary * 2.
*
*  MODIFY gt_table from gs_structure index sy-tabix.
*
*    WRITE: sy-tabix,
*         gs_structure-id,
*         gs_structure-name,
*         gs_structure-surname,
*         gs_structure-job,
*         gs_structure-salary,
*         gs_structure-curr,
*         gs_structure-gsm,
*         gs_structure-e_mail.
*
*        uline.
*        skip.
*else.
*
*  MESSAGE text-001 TYPE 'I'.
*
*
*ENDIF.

*LOOP AT gt_table into gs_structure.
*
*  CHECK gs_structure-salary = 3500.
*
*  gs_structure-salary = gs_structure-salary * 3.
*
*  MODIFY gt_table from gs_structure index sy-tabix.
*
*
*ENDLOOP.
*
*LOOP AT gt_table into gs_structure.
*
*    WRITE: sy-tabix,
*         gs_structure-id,
*         gs_structure-name,
*         gs_structure-surname,
*         gs_structure-job,
*         gs_structure-salary,
*         gs_structure-curr,
*         gs_structure-gsm,
*         gs_structure-e_mail.
*
*        uline.
*        skip.
*
*ENDLOOP.

*READ TABLE gt_table INTO gs_structure WITH key  salary = 3500.
*
*IF sy-subrc is INITIAL.
*
*  gs_structure-salary = gs_structure-salary * 3.
*
*ENDIF.
*
*    WRITE: sy-tabix,
*         gs_structure-id,
*         gs_structure-name,
*         gs_structure-surname,
*         gs_structure-job,
*         gs_structure-salary,
*         gs_structure-curr,
*         gs_structure-gsm,
*         gs_structure-e_mail.
*
*        uline.
*        skip.


*LOOP AT gt_table INTO gs_structure.
*
*  add 500 to gs_structure-salary.
*
*  MODIFY gt_table from gs_structure index sy-tabix.
*
*ENDLOOP.
*
*delete gt_table index 8.
*
*BREAK-POINT.




LOOP AT gt_table into gs_structure where name = 'Merve'.

  gs_structure-name = 'AA'.

  MODIFY gt_table from gs_structure index sy-tabix.

*  WRITE: sy-tabix,
*         gs_structure-id,
*         gs_structure-name,
*         gs_structure-surname,
*         gs_structure-job,
*         gs_structure-salary,
*         gs_structure-curr,
*         gs_structure-gsm,
*         gs_structure-e_mail.
*
*         uline.
*         skip.


ENDLOOP.

sort gt_table by name.

LOOP AT gt_table into gs_structure where name ='AA'.

  gs_structure-name = 'Merve'.

  MODIFY gt_table from gs_structure index sy-tabix.

ENDLOOP.

LOOP AT gt_table into gs_structure.



WRITE: sy-tabix,
       gs_structure-id,
       gs_structure-name,
       gs_structure-surname,
       gs_structure-job,
       gs_structure-salary,
       gs_structure-curr,
       gs_structure-gsm,
       gs_structure-e_mail.

       uline.
       skip.
ENDLOOP.

*BREAK-POINT.
