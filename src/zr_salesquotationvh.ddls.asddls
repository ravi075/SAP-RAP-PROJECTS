@EndUserText.label: 'Sales Quotation Text View'
define view entity ZR_SalesQuotationVH
  as select from I_SalesQuotation
{
  key SalesQuotation as SalesQuotationId,
      SalesQuotation as SalesQuotationText
}
