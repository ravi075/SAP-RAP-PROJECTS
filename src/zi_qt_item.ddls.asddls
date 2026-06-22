@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Quotation Item'
@Metadata.ignorePropagatedAnnotations: true
define  view entity ZI_QT_ITEM as select from ztqt_item
association to parent ZI_QT_HDR as _Header
    on $projection.parent_uuid = _Header.uuid
{
     key uuid,

    parent_uuid,

      sales_quotation,
      sales_quotation_item,

      division,
      material,

      material_text,

   _Header // Make association public
}
