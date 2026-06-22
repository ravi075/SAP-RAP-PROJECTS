@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Header Interfce View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_MACHINE_HDR as select from zmachine_hdr
//composition of ZI_MACHINE_ITM as _Item
composition [0..*] of ZI_MACHINE_ITM as _Item
{
    key machine_no as MachineNo,
    zcheck           as zcheck,
    local_created_by as LocalCreatedBy,
    local_created_at as LocalCreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt,
    _Item // Make association public
}
