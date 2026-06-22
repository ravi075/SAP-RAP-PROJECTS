@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Mahcine header 1 Projection'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_MACHINE_HDR1 
provider contract transactional_query
as projection on ZI_MACHINE_HDR1
{
    key MachineNo,
    zcheck,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _Item: redirected to composition child ZC_MACHINE_ITM1
}
