*&---------------------------------------------------------------------*
*& Report ZFT_ABAP_3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZFT_ABAP_3.

TYPES: BEGIN OF gty_structure,
        index TYPE i,
        birinci_sayi TYPE i,
        ikinci_sayi TYPE i,
        islem TYPE c,
        sonuc TYPE p DECIMALS 3,
       END OF gty_structure.

DATA: gs_structure TYPE gty_structure,
      gt_table TYPE TABLE OF gty_structure.


gs_structure-index = 1.
gs_structure-birinci_sayi = 8.
gs_structure-ikinci_sayi = 21.
gs_structure-islem = '+'.

APPEND gs_structure to gt_table.
clear: gs_structure.


gs_structure-index = 2.
gs_structure-birinci_sayi = 12.
gs_structure-ikinci_sayi = 5.
gs_structure-islem = '-'.

APPEND gs_structure to gt_table.
clear: gs_structure.

gs_structure-index = 3.
gs_structure-birinci_sayi = 54.
gs_structure-ikinci_sayi = 2.
gs_structure-islem = '*'.

APPEND gs_structure to gt_table.
clear: gs_structure.

gs_structure-index = 4.
gs_structure-birinci_sayi = 10.
gs_structure-ikinci_sayi = 10.
gs_structure-islem = '/'.

APPEND gs_structure to gt_table.
clear: gs_structure.

gs_structure-index = 5.
gs_structure-birinci_sayi = 6.
gs_structure-ikinci_sayi = 93.
gs_structure-islem = '+'.

APPEND gs_structure to gt_table.
clear: gs_structure.

*LOOP AT gt_table INTO gs_structure.
*
*  WRITE: gs_structure-index, gs_structure-birinci_sayi, gs_structure-ikinci_sayi, gs_structure-islem.
*  uline.
*  skip.
*
*ENDLOOP.

LOOP AT gt_table INTO gs_structure.

  CASE gs_structure-islem.
    WHEN '+'.
      gs_structure-sonuc = gs_structure-birinci_sayi + gs_structure-ikinci_sayi.
        WRITE: | { gs_structure-index } { gs_structure-birinci_sayi } + { gs_structure-ikinci_sayi } =  { gs_structure-sonuc } |.
        uline.
        skip.
    WHEN '-'.
        gs_structure-sonuc = gs_structure-birinci_sayi - gs_structure-ikinci_sayi.
          WRITE: | { gs_structure-index } { gs_structure-birinci_sayi } - { gs_structure-ikinci_sayi } =  { gs_structure-sonuc } |.
           uline.
           skip.
    WHEN '*'.
       gs_structure-sonuc = gs_structure-birinci_sayi * gs_structure-ikinci_sayi.
         WRITE: | { gs_structure-index } { gs_structure-birinci_sayi } * { gs_structure-ikinci_sayi } =  { gs_structure-sonuc } |.
          uline.
          skip.
    WHEN '/'.
      IF gs_structure-ikinci_sayi = 0.

        MESSAGE 'Bölen sayi 0 olamaz.' TYPE 'S' DISPLAY LIKE 'E'.

      else.

       gs_structure-sonuc = gs_structure-birinci_sayi / gs_structure-ikinci_sayi.
       WRITE: | { gs_structure-index } { gs_structure-birinci_sayi } / { gs_structure-ikinci_sayi } =  { gs_structure-sonuc } |.
        uline.
        skip.

      ENDIF.

    WHEN OTHERS.

      WRITE: 'Tanimlanamayan operatör'.


  ENDCASE.



ENDLOOP.
