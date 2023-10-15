DATA ( variable1 ) TYPE i DECIMALS 2.
DATA ( variable2 ) TYPE c LENGTH 10.
DATA ( variable3 ) TYPE n LENGTH 5 VALUE '00001'.
DATA ( variable4 ) TYPE p DECIMALS 3.
DATA TYPE d.
DATA ( variable5 ) TYPE s VALUE IS INITIAL.

DATA: lv_name TYPE string,
      lv_age  TYPE i.

TYPES: BEGIN OF ty_person,
         name TYPE string,
         age  TYPE i,
       END OF ty_person.

DATA: BEGIN OF ls_person,
         name TYPE string,
         age  TYPE i,
      END OF ls_person.

PARAMETERS: p_name TYPE string,
            p_age  TYPE i.

SELECT-OPTIONS: so_date FOR sy-datum.

RANGES: r_age FOR lv_age.

TABLES: sflight.

TYPES: BEGIN OF ENUM wochentage,
    Montag,
    Dienstag,
    Mittwoch,
    Donnerstag,
    Freitag,
    Samstag,
    Sonntag,
END OF ENUM wochentage.

TYPES: BEGIN OF ENUM wochentage STRUCTURE ls_wt,
    Montag,
    Dienstag,
    Mittwoch,
    Donnerstag,
    Freitag,
    Samstag,
    Sonntag,
END OF ENUM wochentage STRUCTURE ls_wt.

DATA: le_wochentage TYPE wochentage.