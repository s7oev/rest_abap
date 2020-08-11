*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lhc_landmark DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    TYPES:
      city_tt TYPE TABLE OF zbgss10_city.

    METHODS:
      validate_city FOR VALIDATION Landmark~validateCity IMPORTING keys FOR Landmark.
ENDCLASS.

CLASS lhc_landmark IMPLEMENTATION.
  METHOD validate_city.
    SELECT *
      FROM zbg_app_cit_ss11
        FOR ALL ENTRIES IN @keys
          WHERE name = @keys-City
          INTO TABLE @DATA(cities_db).

    LOOP AT keys ASSIGNING FIELD-SYMBOL(<key>).
      IF NOT line_exists( cities_db[ name = <key>-City ] ).
        APPEND VALUE #( name = <key>-Name city = <key>-City ) TO failed.
        APPEND VALUE #( name = <key>-Name city = <key>-City
                        %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                      text = 'This is not a valid city' ) ) TO reported.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
