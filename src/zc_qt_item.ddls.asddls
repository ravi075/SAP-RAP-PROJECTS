@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Quotation Item Projection'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_QT_ITEM as projection on ZI_QT_ITEM
{
    key uuid,
    parent_uuid,
    sales_quotation,
    sales_quotation_item,
    division,
    material,
    material_text,
    /* Associations */
   // _Header
  _Header : redirected to parent ZC_QT_HDR
}
