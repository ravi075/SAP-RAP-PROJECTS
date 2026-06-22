@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Item Interface view'
@Metadata.ignorePropagatedAnnotations: true
@AbapCatalog.extensibility.elementSuffix: 'YSS'
@AbapCatalog.extensibility.extensible: true

define root view entity ZI_SQ_ITEM as select from I_SalesQuotationItem
//association to parent ZI_SQ_HDR as _Header
  //  on $projection.Quotationno = _Header.SalesQuotation
{
@Consumption.valueHelpDefinition: [
{
  entity: {
    name: 'I_SALESQUOTATION',
    element: 'SalesQuotation'
  }
}
]
//@ObjectModel.text.element: ['Quotationno']
@UI.selectionField: [{ position: 10 }]
@Consumption.filter.mandatory: true
    key SalesQuotation as Quotationno,
     SalesQuotationItem as QuotationItem,
    Product as Material,
    Plant as Plant
    //_Header
}
