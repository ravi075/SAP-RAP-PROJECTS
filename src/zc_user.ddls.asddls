@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User prjection view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_USER
 as projection on ZI_USER
{
  key EmpId,
  key DevId,
      DevDescription,
    // @Semantics.largeObject :{
      //mimeType: 'MimeType',
      //fileName: 'filename',
      //acceptableMimeTypes: [ 'application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' ],
      //contentDispositionPreference: #ATTACHMENT
      
      //}
      //@Semantics.mimeType: true  
         
      @Semantics.largeObject : {
      mimeType: 'Mimetype',
      fileName: 'Filename',
      acceptableMimeTypes: [ 'application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'],
      contentDispositionPreference: #ATTACHMENT
      }
      Attachment,
      @Semantics.mimeType: true
      Mimetype,
      Filename,
      FileStatus,
      Criticality,
     // Attchement,
      TemplateStatus,
      TemplateCriticality,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      _UserDev : redirected to composition child ZC_USER_DEV
}
