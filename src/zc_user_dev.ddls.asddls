@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'user development details'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_USER_DEV 
 as projection on ZI_USER_DEV
{
        @EndUserText.label: 'User ID'
    key EmpId,
        @EndUserText.label: 'Development ID'
    key DevId,
    key SerialNo,
    ObjectType,
    ObjectName,
    /* Associations */
    _User : redirected to parent ZC_USER
}
