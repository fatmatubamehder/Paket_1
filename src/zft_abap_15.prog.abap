*&---------------------------------------------------------------------*
*& Report ZFT_ABAP_15
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zft_abap_15.




SELECTION-SCREEN BEGIN OF BLOCK a2 WITH FRAME TITLE TEXT-002 NO INTERVALS.

PARAMETERS: p_1 TYPE n LENGTH 5.

SELECTION-SCREEN END OF BLOCK a2.

TYPES: BEGIN OF gty_str,
         ilanno    TYPE n LENGTH 5,
         kira   TYPE c LENGTH 5,
         stlik   TYPE c LENGTH 5,
         fiyat     TYPE p DECIMALS 3,
         mkare TYPE i,
         adres     TYPE string,
         sehir     TYPE string,
       END OF gty_str.

DATA: gs_str   TYPE gty_str,
      gt_table TYPE TABLE OF gty_str,
      gv_msg TYPE string,
      gv_tabix TYPE n LENGTH 3.



START-OF-SELECTION.

gs_str-ilanno       = '10000'.
gs_str-kira     = 'Evet'.
gs_str-stlik      = 'Hayir'.
gs_str-fiyat        = 855.
gs_str-mkare    = 100.
gs_str-adres        = 'Cumhuriyet Mah.'.
gs_str-sehir        = 'Ankara'.

APPEND gs_str TO gt_table.
CLEAR: gs_str.

gs_str-ilanno       = '10001'.
gs_str-kira      = 'Evet'.
gs_str-stlik      = 'Hayir'.
gs_str-fiyat        = 1000.
gs_str-mkare    = 125.
gs_str-adres        = 'Akasya Mah.'.
gs_str-sehir        = 'Istanbul'.


APPEND gs_str TO gt_table.
CLEAR: gs_str.

gs_str-ilanno       = '10002'.
gs_str-kira      = 'Hayir'.
gs_str-stlik      = 'Evet'.
gs_str-fiyat        = 450000.
gs_str-mkare    = 205.
gs_str-adres        = 'Turuncu Mah.'.
gs_str-sehir        = 'Gaziantep'.


APPEND gs_str TO gt_table.
CLEAR: gs_str.

gs_str-ilanno       = '10003'.
gs_str-kira      = 'Hayir'.
gs_str-stlik      = 'Evet'.
gs_str-fiyat        = 265000.
gs_str-mkare    = 110.
gs_str-adres        = 'Basak Mah.'.
gs_str-sehir        = 'Bolu'.


APPEND gs_str TO gt_table.
CLEAR: gs_str.


gs_str-ilanno       = '10004'.
gs_str-kira      = 'Evet'.
gs_str-stlik      = 'Hayir'.
gs_str-fiyat        = 355.
gs_str-mkare    = 45.
gs_str-adres        = 'Koru Mah.'.
gs_str-sehir        = 'Hatay'.


APPEND gs_str TO gt_table.
CLEAR: gs_str.


gs_str-ilanno       = '10005'.
gs_str-kira      = 'Hayir'.
gs_str-stlik      = 'Evet'.
gs_str-fiyat        = 650000.
gs_str-mkare    = 345.
gs_str-adres        = 'Venedik Mah.'.
gs_str-sehir        = 'Corlu'.


APPEND gs_str TO gt_table.
CLEAR: gs_str.


gs_str-ilanno       = '10006'.
gs_str-kira      = 'Evet'.
gs_str-stlik      = 'Hayir'.
gs_str-fiyat        = 632.
gs_str-mkare    = 75.
gs_str-adres        = 'Yagiz Mah.'.
gs_str-sehir        = 'Bilecik'.


APPEND gs_str TO gt_table.
CLEAR: gs_str.


gs_str-ilanno       = '10007'.
gs_str-kira      = 'Evet'.
gs_str-stlik      = 'Hayir'.
gs_str-fiyat        = 1100.
gs_str-mkare    = 95.
gs_str-adres        = 'Ayvaz Mah.'.
gs_str-sehir        = 'Bursa'.


APPEND gs_str TO gt_table.
CLEAR: gs_str.


gs_str-ilanno       = '10008'.
gs_str-kira      = 'Hayir'.
gs_str-stlik      = 'Evet'.
gs_str-fiyat        = 235000.
gs_str-mkare    = 105.
gs_str-adres        = 'Savas Mah.'.
gs_str-sehir        = 'Gümüshane'.


APPEND gs_str TO gt_table.
CLEAR: gs_str.


gs_str-ilanno       = '10009'.
gs_str-kira      = 'Evet'.
gs_str-stlik      = 'Hayir'.
gs_str-fiyat        = 750.
gs_str-mkare    = 58.
gs_str-adres        = 'Baris Mah.'.
gs_str-sehir        = 'Trabzon'.


APPEND gs_str TO gt_table.
CLEAR: gs_str.




LOOP AT gt_table INTO gs_str WHERE ilanno = p_1.

*  CHECK gs_str-ilanno = p_1.
*
*IF sy-subrc is  INITIAL.
    gv_tabix = sy-tabix.
*ENDIF.


  CONCATENATE text-003 gv_tabix INTO gv_msg SEPARATED BY space.

  MESSAGE gv_msg TYPE 'I'.

  DELETE gt_table INDEX sy-tabix.

ENDLOOP.
*
*LOOP AT gt_table INTO gs_str.
*
*    WRITE: sy-tabix,
*           gs_str-ilanno,
*           gs_str-kira,
*           gs_str-stlik,
*           gs_str-fiyat,
*           gs_str-mkare,
*           gs_str-adres,
*           gs_str-sehir.
*    uline.
*    skip.
*
*ENDLOOP.

*read table gt_table INTO gs_str WITH KEY ilanno = p_1.
*
*  IF sy-subrc is INITIAL.
*    gv_tabix = sy-tabix.
*
*    gv_msg = 'Silinen satirin sayisi:'.
*
*    CONCATENATE gv_msg gv_tabix into gv_msg SEPARATED BY space.
*
*    MESSAGE gv_msg TYPE 'I'.
*
*  ENDIF.
