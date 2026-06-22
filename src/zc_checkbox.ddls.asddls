@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_CHECKBOX as projection on ZI_CHECKBOX
{
    key Sorder,
    ZzSelected
}
