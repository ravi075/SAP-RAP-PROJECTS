@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Quotation Header Entity'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define view entity ZR_SalesQuotationHdr as select from I_SalesQuotation
association [0..1] to ZR_SalesQuotationVH as _SalesQuotationVH
    on $projection.SalesQuotationId = _SalesQuotationVH.SalesQuotationId
{
    key SalesQuotation as SalesQuotationId,

  
  SalesQuotation,

  SalesOrganization,
  DistributionChannel

}
