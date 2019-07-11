  METHOD pa0006set_update_entity.
**TRY.
*CALL METHOD SUPER->PA0006SET_UPDATE_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**    io_data_provider        =
**  IMPORTING
**    er_entity               =
*    .
** CATCH /iwbep/cx_mgw_busi_exception .
** CATCH /iwbep/cx_mgw_tech_exception .
**ENDTRY.

    DATA: ls_employee LIKE er_entity.
    io_data_provider->read_entry_data( IMPORTING es_data = ls_employee ).

    UPDATE pa0006 FROM ls_employee.

  ENDMETHOD.
