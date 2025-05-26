*&---------------------------------------------------------------------*
*& Report ZFT_ABAP_14
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZFT_ABAP_14.

SELECTION-SCREEN BEGIN OF BLOCK a1 WITH FRAME TITLE text-001 NO INTERVALS.
PARAMETERS: p_yer    TYPE c LENGTH 50,
            p_urun   TYPE c LENGTH 40,
            p_fiyat  TYPE p DECIMALS 3,
            p_pbirim TYPE c LENGTH 40,
            p_tarih  TYPE datum,
            p_saat   TYPE uzeit.

SELECTION-SCREEN END OF BLOCK a1.

SELECTION-SCREEN BEGIN OF BLOCK a2 WITH FRAME TITLE text-002 NO INTERVALS.

PARAMETERS: p_1 TYPE p DECIMALS 3.

SELECTION-SCREEN END OF BLOCK a2.

TYPES: BEGIN OF gty_str,
         yer    TYPE c LENGTH 50,
         urun   TYPE c LENGTH 40,
         fiyat TYPE p DECIMALS 3,
         pbirim TYPE c LENGTH 40,
         tarih  TYPE datum,
         saat   TYPE uzeit,
END OF gty_str.

DATA: gs_str TYPE gty_str,
      gt_table     TYPE TABLE OF gty_str.



START-OF-SELECTION.

DO 10 TIMES.

  gs_str-yer    = p_yer.
  gs_str-urun   = p_urun.
  gs_str-fiyat  = p_fiyat.
  gs_str-pbirim = p_pbirim.
  gs_str-tarih  = p_tarih.
  gs_str-saat   = p_saat.

  APPEND gs_str to gt_table.
  clear: gs_str.

  add 2 to p_fiyat.

ENDDO.


*LOOP AT gt_table INTO gs_str.
*
*
*         WRITE: sy-tabix,
*         gs_str-yer,
*         gs_str-urun,
*         gs_str-fiyat,
*         gs_str-pbirim,
*         gs_str-tarih,
*         gs_str-saat.
*
*  uline.
*  skip.
*
*
*
*ENDLOOP.



LOOP AT gt_table INTO gs_str.

 CHECK gs_str-fiyat > p_1.

         WRITE: sy-tabix,
         gs_str-yer,
         gs_str-urun,
         gs_str-fiyat,
         gs_str-pbirim,
         gs_str-tarih,
         gs_str-saat.

  uline.
  skip.



ENDLOOP.
