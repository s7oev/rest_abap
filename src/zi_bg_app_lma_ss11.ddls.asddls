@AbapCatalog.sqlViewName: 'ZVI_BGA_LMA_SS11'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data model for Landmark'
define root view ZI_BG_APP_LMA_SS11 as select from zbg_app_lma_ss11 as Landmark
  association [0..1] to ZI_BG_APP_CIT_SS11 as _City on $projection.City = _City.name
{
  key name as Name,
  key city as City,
  photo as Photo,
  description as Description,
  
  _City
}
