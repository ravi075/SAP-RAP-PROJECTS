@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Machine Header 1 Interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_MACHINE_HDR1 as select from zmachine_hdr1
composition [0..*] of ZI_MACHINE_ITM1 as _Item
{
    key machine_no as MachineNo,
    zcheck           as zcheck,
     @Semantics.user.createdBy: true
    local_created_by as LocalCreatedBy,
     @Semantics.systemDateTime.createdAt: true
    local_created_at as LocalCreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt,
    _Item // Make association public
}
