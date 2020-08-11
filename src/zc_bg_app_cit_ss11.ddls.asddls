@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for City'
@Search.searchable: true

define root view entity ZC_BG_APP_CIT_SS11 as projection on ZI_BG_APP_CIT_SS11 {
    @Search.defaultSearchElement: true
    key name as Name,
    region as Region,
    dist_from_sof as DistanceFromSofia,
    
    _Landmarks : redirected to ZC_BG_APP_LMA_SS11
}
