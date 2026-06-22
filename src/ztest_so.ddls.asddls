@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Quotation Header'
@Metadata.ignorePropagatedAnnotations: true
@AbapCatalog.extensibility.elementSuffix: 'YSS'
@AbapCatalog.extensibility.extensible: true
define root view entity ZTEST_SO as select from I_SalesQuotation
{
    key SalesQuotation
}
