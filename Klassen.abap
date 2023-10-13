ZCL_...
REPORT ZSFLIGHT_REPORT.

* Table type declaration for internal table to hold flight data
TYPES: BEGIN OF ty_sflight,
         carrid TYPE sflight-carrid,
         connid TYPE sflight-connid,
         fldate TYPE sflight-fldate,
         price TYPE sflight-price,
       END OF ty_sflight.

* Declare internal table and work area
DATA: it_sflight TYPE TABLE OF ty_sflight,
      wa_sflight TYPE ty_sflight.

START-OF-SELECTION.

  * Select data from SFLIGHT table
  SELECT carrid connid fldate price
    INTO TABLE it_sflight
    FROM sflight
    UP TO 10 ROWS.

END-OF-SELECTION.

  * Display data on the screen
  LOOP AT it_sflight INTO wa_sflight.
    WRITE: / wa_sflight-carrid, wa_sflight-connid, wa_sflight-fldate, wa_sflight-price.
  ENDLOOP.
