CLASS lhc_zi_machine_hdr1 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zi_machine_hdr1 RESULT result.

    METHODS excelupload FOR MODIFY
      IMPORTING keys FOR ACTION zi_machine_hdr1~excelupload.

ENDCLASS.

CLASS lhc_zi_machine_hdr1 IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD excelupload.
TYPES : BEGIN OF ty_sheet_data,
             machineno   TYPE zi_machine_hdr1-MachineNo,
             zcheck       type zi_machine_hdr1-zcheck,
           "  SerialNo     TYPE zi_machine_itm1-SerialNo,
            END OF ty_sheet_data.

           DATA lv_file_content   TYPE xstring.
    DATA lt_sheet_data     TYPE STANDARD TABLE OF ty_sheet_data.
    DATA lt_listing_create TYPE TABLE FOR CREATE zi_machine_hdr1.

    lv_file_content = VALUE #( keys[ 1 ]-%param-_streamproperties-StreamProperty OPTIONAL ).

    " Error handling in case file content is initial

    DATA(lo_document) = xco_cp_xlsx=>document->for_file_content( lv_file_content )->read_access( ).

    DATA(lo_worksheet) = lo_document->get_workbook( )->worksheet->at_position( 1 ).

    DATA(o_sel_pattern) = xco_cp_xlsx_selection=>pattern_builder->simple_from_to(
      )->from_column( xco_cp_xlsx=>coordinate->for_alphabetic_value( 'A' )  " Start reading from Column A
      )->to_column( xco_cp_xlsx=>coordinate->for_alphabetic_value( 'N' )   " End reading at Column N
      )->from_row( xco_cp_xlsx=>coordinate->for_numeric_value( 2 )    " *** Start reading from ROW 2 to skip the header ***
      )->get_pattern( ).

    lo_worksheet->select( o_sel_pattern
                                     )->row_stream(
                                     )->operation->write_to( REF #( lt_sheet_data )
                                     )->set_value_transformation(
                                         xco_cp_xlsx_read_access=>value_transformation->string_value
                                     )->execute( ).

    lt_listing_create = CORRESPONDING #( lt_sheet_data ).

    MODIFY ENTITIES OF zi_machine_hdr1 IN LOCAL MODE
           ENTITY zi_machine_hdr1
           CREATE AUTO FILL CID FIELDS ( MachineNo zcheck )
           WITH lt_listing_create

           " TODO: variable is assigned but never used (ABAP cleaner)
           MAPPED DATA(lt_mapped)
           " TODO: variable is assigned but never used (ABAP cleaner)
           REPORTED DATA(lt_reported)
           " TODO: variable is assigned but never used (ABAP cleaner)
           FAILED DATA(lt_failed).


    " Communicate the messages to UI - not in scope of this demo
IF lt_failed IS INITIAL.
      APPEND VALUE #( %msg = new_message_with_text( severity = if_abap_behv_message=>severity-success
                                                    text     = 'File Uploaded - please refresh the page!!' ) )
             TO reported-zi_machine_hdr1.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
