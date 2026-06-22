@EndUserText.label: 'Action Param for Uploading Excel'
define root abstract entity ZRK_D_UPLOAD_EXCEL
  
{
    @UI.hidden: true
dummy : abap_boolean;
     _StreamProperties : association [1] to ZRK_D_FILE_STREAM on 1 = 1;
    
    
}
