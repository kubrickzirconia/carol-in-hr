  method PA0006SET_GET_ENTITY.
**TRY.
*CALL METHOD SUPER->PA0006SET_GET_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_request_object       =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**  IMPORTING
**    er_entity               =
**    es_response_context     =
*    .
** CATCH /iwbep/cx_mgw_busi_exception .
** CATCH /iwbep/cx_mgw_tech_exception .
**ENDTRY.

    DATA: ls_name_value TYPE LINE OF /iwbep/t_mgw_name_value_pair,
          lv_pernr TYPE pa0006-pernr.

    READ TABLE it_key_tab INTO ls_name_value
    WITH KEY name = 'pernr'.
    IF sy-subrc IS INITIAL.
      lv_pernr = ls_name_value-value.
    ENDIF.

    SELECT SINGLE pernr, endda, begda, seqnr, stras, ort01, ort02, pstlz, land1, telnr, state FROM pa0006
      INTO CORRESPONDING FIELDS OF @er_entity
      WHERE pernr = @lv_pernr.

  endmethod.
