@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'iTEM Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_MACHINE_ITM as projection on ZI_MACHINE_ITM
{
    key MachineNo,
    key SerialNo,
    Description,
    zcheck,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
   // _Header
   _Header : redirected to parent ZC_MACHINE_HDR
}
