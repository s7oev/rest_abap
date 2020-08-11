@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for Landmark'
@Search.searchable: true

define root view entity ZC_BG_APP_LMA_SS11 as projection on ZI_BG_APP_LMA_SS11 {
    @Search.defaultSearchElement: true
    key name as Name,
    key city as City,
    photo as Photo,
    description as Description,
    _City : redirected to ZC_BG_APP_CIT_SS11 
}
