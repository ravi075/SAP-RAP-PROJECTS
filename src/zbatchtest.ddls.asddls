@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'for batch test'
@Metadata.ignorePropagatedAnnotations: true
define view entity zbatchtest as select from I_ClfnObjectCharcValue
{
  key ClfnObjectID,
      CharcValue
}
where ClfnObjectID = '00000000000000315'
