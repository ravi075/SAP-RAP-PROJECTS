@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_SQ_ITEM as projection on ZI_SQ_ITEM
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
    key Quotationno,
    QuotationItem,
    Material,
    Plant
}
