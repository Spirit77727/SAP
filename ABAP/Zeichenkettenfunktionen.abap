*strlen(): Bestimmt die Länge einer Zeichenkette.
DATA(lv_length) = strlen( 'Hallo Welt' ).

*charlen(): Bestimmt die Länge in Zeichen.
DATA(lv_char_length) = charlen( 'Hallo' ).

*count(): Sucht nach Vorkommen eines Musters in einer Zeichenkette.
DATA(lv_count) = count( val = 'Hallo Hallo' sub = 'Hallo' ).

*count_any_of() / count_any_not_of(): Zählt die Vorkommen eines beliebigen Zeichens aus einem Set.
DATA(lv_count_a) = count_any_of( val = 'abcabc' set = 'a' ).
DATA(lv_count_b) = count_any_not_of( val = 'abcabc' set = 'a' ).

*condense(): Entfernt führende, nachfolgende und wiederholte Leerzeichen.
DATA(lv_string) = condense( 'Hallo  Welt  ' ).

*concat_lines_of(): Verbindet Zeilen eines Tabellenobjekts.
DATA(lv_concatenated) = concat_lines_of( table = lt_table sep = ' ' ).

*escape(): Verwendet Escape-Sequenzen.
DATA(lv_escaped) = escape( val = 'Hallo & Welt' format = cl_abap_format=>e_html ).

*find() / find_end() / find_any_of() / find_any_not_of(): Suchen nach einem Muster in einer Zeichenkette.
DATA(lv_pos) = find( val = 'Hallo Welt' sub = 'Welt' ).

*insert(): Fügt eine Zeichenkette in eine andere ein.
DATA(lv_string) = 'Hallo'.
lv_string = insert( val = lv_string off = 5 len = 0 sub = ' Welt' ).

*match(): Überprüft, ob eine Zeichenkette einem Muster entspricht.
IF match( regex = '^H.*o$' val = 'Hallo' ).
    WRITE: 'Passt'.
ENDIF.

*replace(): Ersetzt ein Muster durch eine andere Zeichenkette.
DATA(lv_replaced) = replace( val = 'Hallo Welt' regex = 'Welt' with = 'ABAP' ).

*shift_left() / shift_right(): Verschiebt eine Zeichenkette nach links oder rechts.
DATA(lv_shifted) = shift_left( val = '  Hallo' places = 2 ).

*substring() / substring_after() / substring_before() / substring_from(): Extrahiert einen Teil einer Zeichenkette.
DATA(lv_sub) = substring( val = 'Hallo Welt' off = 6 len = 4 ).

*to_upper() / to_lower(): Ändert die Groß-/Kleinschreibung.
DATA(lv_upper) = to_upper( 'Hallo' ).

*translate(): Ersetzt Zeichen durch Zeichen aus einem anderen Set.
DATA(lv_translated) = translate( val = 'abc' from = 'abc' to = '123' ).
  