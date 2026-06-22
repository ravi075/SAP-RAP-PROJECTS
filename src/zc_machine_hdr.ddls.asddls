@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Header Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_MACHINE_HDR 
provider contract transactional_query
as projection on ZI_MACHINE_HDR
{
    key MachineNo,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    //_Item
   _Item: redirected to composition child ZC_MACHINE_ITM
  }
  
