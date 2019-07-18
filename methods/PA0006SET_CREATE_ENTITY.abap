  METHOD pa0006set_create_entity.

    DATA: ls_employee LIKE er_entity.
    io_data_provider->read_entry_data( IMPORTING es_data = ls_employee ).

    INSERT INTO pa0006 VALUES ls_employee.

  ENDMETHOD.
