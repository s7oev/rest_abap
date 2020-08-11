CLASS zcl_ss_generate_bg_data_ss11 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.


CLASS zcl_ss_generate_bg_data_ss11 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: landmark TYPE zbg_app_lma_ss11.

    landmark-name = 'TestName'.
    landmark-city = 'TestCity'.
    landmark-photo = 'TestPhoto'.
    landmark-description = 'TestDesc'.

    "INSERT zbg_app_lma_ss11 FROM @landmark.

    DATA: city TYPE zbg_app_cit_ss11.
    city-name = 'TestCity'.
    city-region = 'TestRegion'.
    city-dist_from_sof = 123.

    INSERT zbg_app_cit_ss11 FROM @city.
  ENDMETHOD.
ENDCLASS.
