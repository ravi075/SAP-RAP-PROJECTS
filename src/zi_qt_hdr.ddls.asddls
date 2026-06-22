@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Quotation Header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_QT_HDR as select from ztqt_hdr
composition [0..*] of ZI_QT_ITEM  as _Item
{
    key uuid,
    
     @Consumption.valueHelpDefinition: [
    {
      entity: {
        name    : 'I_SalesQuotation',
        element : 'SalesQuotation'
      }
    }
  ]
    
    sales_quotation,

      local_created_by,
      local_created_at,
      local_last_changed_by,
      local_last_changed_at,
      last_changed_at,

      _Item
     // Make association public
} 
