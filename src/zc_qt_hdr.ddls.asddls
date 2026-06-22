@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Quotation Header Projection'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_QT_HDR 
provider contract transactional_query
as projection on ZI_QT_HDR
{
    key uuid,
    sales_quotation,
    /* Associations */
    _Item : redirected to composition child ZC_QT_ITEM
}
