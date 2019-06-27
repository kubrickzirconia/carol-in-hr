  METHOD pa0006set_get_entityset.
**TRY.
*CALL METHOD SUPER->PA0006SET_GET_ENTITYSET
*  EXPORTING
*    IV_ENTITY_NAME           =
*    IV_ENTITY_SET_NAME       =
*    IV_SOURCE_NAME           =
*    IT_FILTER_SELECT_OPTIONS =
*    IS_PAGING                =
*    IT_KEY_TAB               =
*    IT_NAVIGATION_PATH       =
*    IT_ORDER                 =
*    IV_FILTER_STRING         =
*    IV_SEARCH_STRING         =
**    io_tech_request_context  =
**  IMPORTING
**    et_entityset             =
**    es_response_context      =
*    .
** CATCH /iwbep/cx_mgw_busi_exception .
** CATCH /iwbep/cx_mgw_tech_exception .
**ENDTRY.

"if the uri contains a filter
  IF iv_filter_string IS NOT INITIAL.

   "perform select statement where condition = condition from iv_filter_string
   SELECT pernr, endda, begda, seqnr, stras, ort01, ort02, pstlz, land1, telnr, state FROM pa0006
     UP TO 20 ROWS
     INTO CORRESPONDING FIELDS OF TABLE @et_entityset
     WHERE (iv_filter_string).

  ELSE.

   "select all entries from pa0006, ordered by end date (so entries still valid appear first)
   SELECT pernr, endda, begda, seqnr, stras, ort01, ort02, pstlz, land1, telnr, state FROM pa0006
     UP TO 20 ROWS
     INTO CORRESPONDING FIELDS OF TABLE @et_entityset
     ORDER BY endda.

  ENDIF.

  ENDMETHOD.
