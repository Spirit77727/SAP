DATA: v_color TYPE string.

v_color = 'Red'.

CASE v_color.
  WHEN 'Red'.
    WRITE: 'Die Farbe ist Rot'.
  WHEN 'Blue' OR 'Green'.
    WRITE: 'Die Farbe ist Blau oder Grün'.
  WHEN OTHERS.
    WRITE: 'Unbekannte Farbe'.
ENDCASE.

DATA: v_number TYPE i.

v_number = 3.

CASE v_number.
  WHEN 1.
    WRITE: 'Eins'.
  WHEN 2.
    WRITE: 'Zwei'.
  WHEN 3.
    WRITE: 'Drei'.
  WHEN OTHERS.
    WRITE: 'Eine andere Nummer'.
ENDCASE.

DATA: r_typ TYPE REF TO data.

r_typ = cl_abap_typedescr=>describe_by_data( 'Hello' ). 

CASE TYPE OF r_typ.
  WHEN TYPE cl_abap_elemdescr INTO DATA(r_element).
    WRITE: 'Es ist ein Elementtyp'.
  WHEN TYPE cl_abap_structdescr INTO DATA(r_struktur).
    WRITE: 'Es ist eine Struktur'.
  WHEN TYPE cl_abap_tabledescr INTO DATA(r_tabelle).
    WRITE: 'Es ist eine interne Tabelle'.
  WHEN OTHERS.
    WRITE: 'Ein anderer Typ'.
ENDCASE.

DATA: r_typ TYPE REF TO data,
      v_struct TYPE STANDARD TABLE OF i.

r_typ = cl_abap_typedescr=>describe_by_data( v_struct ).

CASE TYPE OF r_typ.
  WHEN TYPE cl_abap_elemdescr INTO DATA(r_element).
    WRITE: 'Es ist ein Elementtyp'.
  WHEN TYPE cl_abap_structdescr INTO DATA(r_struktur).
    WRITE: 'Es ist eine Struktur'.
  WHEN TYPE cl_abap_tabledescr INTO DATA(r_tabelle).
    WRITE: 'Es ist eine interne Tabelle'.
  WHEN OTHERS.
    WRITE: 'Ein anderer Typ'.
ENDCASE.
