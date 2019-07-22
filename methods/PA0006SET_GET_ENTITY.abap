  METHOD pa0006set_get_entity.
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

    "data declarations
    DATA: ls_name_value TYPE LINE OF /iwbep/t_mgw_name_value_pair,
          lv_pernr TYPE pa0006-pernr,
          lt_er_entity TYPE TABLE OF pa0006,
          lwa_er_entity LIKE LINE OF lt_er_entity,
          lv_counter TYPE string.

    "get employee number from key value pair
    READ TABLE it_key_tab INTO ls_name_value
    WITH KEY name = 'pernr'.
    IF sy-subrc IS INITIAL.
      lv_pernr = ls_name_value-value.
    ENDIF.

    "select all entries for a given employee number into lt
    SELECT * FROM pa0006
      INTO CORRESPONDING FIELDS OF TABLE @lt_er_entity
      WHERE pernr = @lv_pernr.

    "sort lt by end date so the valid entry is the first entry
    SORT lt_er_entity BY endda DESCENDING.

    "move the first entry from lt to exporting variable
    LOOP AT lt_er_entity INTO lwa_er_entity.
      IF lv_counter IS INITIAL.
        MOVE-CORRESPONDING lwa_er_entity TO er_entity.
      ELSE.
        EXIT.
      ENDIF.
      lv_counter = 'X'.
    ENDLOOP.

  ENDMETHOD.
