@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'user development details'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZI_USER_DEV as select from zuser_dev
association to parent ZI_USER as _User
    on $projection.EmpId = _User.EmpId
    and $projection.DevId = _User.DevId
    
{
    key epm_id             as EmpId,  
    key dev_id             as DevId,
    key serial_no          as SerialNo,
        object_type        as ObjectType,
        object_name        as ObjectName,
         _User   // Make association public
}
