@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Item Interface View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_MACHINE_ITM1 as select from zmachine_itm1
association to parent ZI_MACHINE_HDR1 as _Header
    on $projection.MachineNo = _Header.MachineNo
{
    key machine_no as MachineNo,
    key serial_no as SerialNo,
    description as Description,
    zcheck      as zcheck,
    local_created_by as LocalCreatedBy,
    local_created_at as LocalCreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt,
   _Header
}
