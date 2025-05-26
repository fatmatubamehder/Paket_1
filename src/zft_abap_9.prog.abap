*&---------------------------------------------------------------------*
*& Report ZFT_ABAP_9
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZFT_ABAP_9.


TYPES: BEGIN OF gty_structure,
         id     TYPE n LENGTH 5,
         name   TYPE c LENGTH 40,
         sname  TYPE c LENGTH 40,
         ders   TYPE c LENGTH 40,
         not    TYPE i,
         basari TYPE c LENGTH 40,
       END OF gty_structure.

DATA: gs_structure TYPE gty_structure,
      gt_table     TYPE TABLE OF gty_structure.

SELECTION-SCREEN BEGIN OF BLOCK A1 WITH FRAME TITLE TEXT-001 NO INTERVALS.


PARAMETERS: p_1 TYPE i,
            p_2 TYPE i.


SELECTION-SCREEN END OF BLOCK A1.


  gs_structure-id     = '10000'.
  gs_structure-name   = 'Fatma'.
  gs_structure-sname  = 'Mehder'.
  gs_structure-ders   = 'Fizik'.
  gs_structure-not   = '65'.
  gs_structure-basari = 'Orta'.

  APPEND gs_structure TO gt_table.
  clear: gs_structure.

  gs_structure-id     = '10001'.
  gs_structure-name   = 'Saziye'.
  gs_structure-sname  = 'Mehder'.
  gs_structure-ders   = 'Almanca'.
  gs_structure-not   = '100'.
  gs_structure-basari = 'Pekiyi'.

  APPEND gs_structure TO gt_table.
  clear: gs_structure.


  gs_structure-id     = '10002'.
  gs_structure-name   = 'Tunahan'.
  gs_structure-sname  = 'Turna'.
  gs_structure-ders   = 'Matematik'.
  gs_structure-not   = '95'.
  gs_structure-basari = 'Pekiyi'.

  APPEND gs_structure TO gt_table.
  clear: gs_structure.


  gs_structure-id     = '10003'.
  gs_structure-name   = 'Kenan'.
  gs_structure-sname  = 'Algan'.
  gs_structure-ders   = 'Matematik'.
  gs_structure-not   = '40'.
  gs_structure-basari = 'Cok Zayif'.

  APPEND gs_structure TO gt_table.
  clear: gs_structure.


  gs_structure-id     = '10004'.
  gs_structure-name   = 'Aynur'.
  gs_structure-sname  = 'Yalniz'.
  gs_structure-ders   = 'Kimya'.
  gs_structure-not   = '55'.
  gs_structure-basari = 'Zayif'.

  APPEND gs_structure TO gt_table.
  clear: gs_structure.


  gs_structure-id     = '10005'.
  gs_structure-name   = 'Ayse'.
  gs_structure-sname  = 'Mehder'.
  gs_structure-ders   = 'Matematik'.
  gs_structure-not   = '75'.
  gs_structure-basari = 'Iyi'.

  APPEND gs_structure TO gt_table.
  clear: gs_structure.


  gs_structure-id     = '10006'.
  gs_structure-name   = 'Erman'.
  gs_structure-sname  = 'Saglam'.
  gs_structure-ders   = 'Fransizca'.
  gs_structure-not   = '85'.
  gs_structure-basari = 'Cok Iyi'.

  APPEND gs_structure TO gt_table.
  clear: gs_structure.


  gs_structure-id     = '10007'.
  gs_structure-name   = 'Ertugrul'.
  gs_structure-sname  = 'Eryigit'.
  gs_structure-ders   = 'Kimya'.
  gs_structure-not   = '50'.
  gs_structure-basari = 'Zayif'.

  APPEND gs_structure TO gt_table.
  clear: gs_structure.


  gs_structure-id     = '10008'.
  gs_structure-name   = 'Emine'.
  gs_structure-sname  = 'Kilinc'.
  gs_structure-ders   = 'Cografya'.
  gs_structure-not   = '25'.
  gs_structure-basari = 'Cok zayif'.


  APPEND gs_structure TO gt_table.
  clear: gs_structure.


  gs_structure-id     = '10008'.
  gs_structure-name   = 'Fadime'.
  gs_structure-sname  = 'Köroglu'.
  gs_structure-ders   = 'Arapca'.
  gs_structure-not   = '62'.
  gs_structure-basari = 'Orta'.


  APPEND gs_structure TO gt_table.
  clear: gs_structure.

* LOOP AT gt_table into gs_structure .
*
*     WRITE: gs_structure-id,
*            gs_structure-name,
*            gs_structure-sname,
*            gs_structure-ders,
*            gs_structure-not,
*            gs_structure-basari.
*
*  ULINE.
*  SKIP.
*
* ENDLOOP.

LOOP AT gt_table into gs_structure from p_1 to p_2.

    WRITE: sy-tabix,
         gs_structure-id,
         gs_structure-name,
         gs_structure-sname,
         gs_structure-ders,
         gs_structure-not,
         gs_structure-basari.

    uline.
    skip.


ENDLOOP.
