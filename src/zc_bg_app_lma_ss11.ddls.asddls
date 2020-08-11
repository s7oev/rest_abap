@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for Landmark'
@Search.searchable: true

define root view entity ZC_BG_APP_LMA_SS11 as projection on ZI_BG_APP_LMA_SS11 {
    @Search.defaultSearchElement: true
    key Name as Name,
    key City as City,
    Photo as Photo,
    Description as Description,
    _City : redirected to ZC_BG_APP_CIT_SS11 
}
