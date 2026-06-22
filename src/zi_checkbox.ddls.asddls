@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_CHECKBOX as select from zcheckbox
//composition of target_data_source_name as _association_name
{
    key sorder as Sorder,
    zz_selected as ZzSelected
   // _association_name // Make association public
}
