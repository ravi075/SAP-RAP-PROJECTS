@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Header Interface View'
@Metadata.ignorePropagatedAnnotations: true
@AbapCatalog.extensibility.elementSuffix: 'YSS'
@AbapCatalog.extensibility.extensible: true
define root view entity ZI_SQ_HDR as select from I_SalesQuotation
//composition [0..*] of ZI_SQ_ITEM as _Items
{
    key SalesQuotation
  //  _Items
    //_association_name // Make association public
}
