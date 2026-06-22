@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View item 1'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_MACHINE_ITM1 as projection on ZI_MACHINE_ITM1
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
    _Header : redirected to parent ZC_MACHINE_HDR1
}
