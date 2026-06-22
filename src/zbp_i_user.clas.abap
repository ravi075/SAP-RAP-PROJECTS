CLASS zbp_i_user DEFINITION PUBLIC ABSTRACT FINAL FOR BEHAVIOR OF zi_user.
  PUBLIC SECTION.
    TYPES: BEGIN OF gty_exl_file,
             emp_id    TYPE string,
             dev_id    TYPE string,
             dev_desc  TYPE string,
             obj_type  TYPE string,
             obj_name  TYPE string,
             serial_no TYPE string,
           END OF gty_exl_file.
ENDCLASS.



CLASS ZBP_I_USER IMPLEMENTATION.
ENDCLASS.
