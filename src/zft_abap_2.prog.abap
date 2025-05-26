*&---------------------------------------------------------------------*
*& Report ZFT_ABAP_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZFT_ABAP_2.

TYPES: BEGIN OF gty_structure,
         matrn TYPE n LENGTH 10,
         werks TYPE n LENGTH 4,
         igort TYPE n LENGTH 4,
         menge TYPE c LENGTH 2,
       END OF gty_structure.

DATA: gs_structure TYPE gty_structure,
      gt_table     TYPE TABLE OF gty_structure,
      g_1 TYPE n LENGTH 1,
      g_message TYPE string.


gs_structure-matrn = 1000000000.
gs_structure-werks = 1001.
gs_structure-igort = 1001.
gs_structure-menge = 3.

APPEND gs_structure to gt_table.
Clear: gs_structure.

gs_structure-matrn = 100000000.
gs_structure-werks = 1001.
gs_structure-igort = 1002.
gs_structure-menge = 10.

APPEND gs_structure to gt_table.
Clear: gs_structure.


gs_structure-matrn = 1000000002.
gs_structure-werks = 1001.
gs_structure-igort = 1003.
gs_structure-menge = 8.

APPEND gs_structure to gt_table.
Clear: gs_structure.


gs_structure-matrn = 1000000003.
gs_structure-werks = 1001.
gs_structure-igort = 1004.
gs_structure-menge = 1.

APPEND gs_structure to gt_table.
Clear: gs_structure.


gs_structure-matrn = 1000000004.
gs_structure-werks = 1001.
gs_structure-igort = 1001.
gs_structure-menge = 12.

APPEND gs_structure to gt_table.
Clear: gs_structure.

LOOP AT gt_table INTO gs_structure.

  WRITE: gs_structure-matrn, gs_structure-werks,  gs_structure-igort, gs_structure-menge.
  uline.
  skip.

ENDLOOP.

SELECTION-SCREEN begin of block a1 with FRAME title text-001 no intervals.

LOOP AT gt_table INTO gs_structure WHERE igort > 1001.

  WRITE: sy-tabix, gs_structure-matrn, gs_structure-werks,  gs_structure-igort, gs_structure-menge.

  add 1 to g_1.
  uline.
  skip.

ENDLOOP.

SELECTION-SCREEN end of block a1.

SELECTION-SCREEN begin of block a2 with FRAME title text-002 no intervals.

WRITE: | 1003'den büyük olan { g_1 } adet deger vardir.|.

SELECTION-SCREEN end of block a2.
