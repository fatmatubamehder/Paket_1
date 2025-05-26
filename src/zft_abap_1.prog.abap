*&---------------------------------------------------------------------*
*& Report ZFT_ABAP_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zft_abap_1.

TYPES: BEGIN OF gty_structure,
         id      TYPE n LENGTH 2,
         name    TYPE c LENGTH 40,
         sname TYPE c LENGTH 40,
         ders    TYPE c LENGTH 40,
         not     TYPE i,
       END OF gty_structure.

DATA: gs_structure TYPE gty_structure,
      gt_table     TYPE TABLE OF gty_structure.

PARAMETERS: p_sayac TYPE i.

DATA: g_sayac TYPE i VALUE 0.


WHILE p_sayac > g_sayac.

  PARAMETERS: p_id      TYPE n LENGTH 2,
              p_name    TYPE c LENGTH 40,
              p_sname TYPE c LENGTH 40,
              p_ders    TYPE c LENGTH 40,
              p_not     TYPE i.

  gs_structure-id = p_id.
  gs_structure-name = p_name.
  gs_structure-sname = p_sname.
  gs_structure-ders = p_ders.
  gs_structure-not = p_not.

  add 1 to g_sayac.

  WRITE: g_sayac, p_sayac.

  SKIP.
  ULINE.

  APPEND gs_structure to gt_table.

endwhile.
