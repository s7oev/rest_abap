@AbapCatalog.sqlViewName: 'ZVI_BGA_CIT_SS11'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data model for City'
define root view ZI_BG_APP_CIT_SS11 as select from zbg_app_cit_ss11 as City
  association [0..*] to ZI_BG_APP_LMA_SS11 as _Landmarks on $projection.name = _Landmarks.City
{
    key name,
    region,
    dist_from_sof,
    
    _Landmarks
}
