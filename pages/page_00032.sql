prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.4'
,p_default_workspace_id=>20952813001415487158
,p_default_application_id=>141546
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DDD451261366WORKSPACE'
);
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'User Entry Form'
,p_alias=>'USER-ENTRY-FORM'
,p_step_title=>'User Entry Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#form_title{',
'    text-align: center;',
'   margin: 0 0 0 290px;',
'   font-style: bold;}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210919175858'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26855012171389730369)
,p_plug_name=>'<div id="form_title"><h2> User Information Entry Form </h2></div>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_query_type=>'TABLE'
,p_query_table=>'USER_INFO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26855033141390733438)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352731005589583001)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_06'
,p_menu_id=>wwv_flow_api.id(21352564009959582961)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(21352788184877583035)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26855019967783730388)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P32_USER_INFO_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26855018814105730387)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26855020304475730388)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P32_USER_INFO_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26855019597082730388)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P32_USER_INFO_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26855020692478730388)
,p_branch_action=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26855012509636730370)
,p_name=>'P32_USER_INFO_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_item_source_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_source=>'USER_INFO_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26855012976780730383)
,p_name=>'P32_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_item_source_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_prompt=>'Employee  Name'
,p_source=>'EMPLOYEE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE_NAME_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select first_name||'' ''||last_name emp_name, employee_id',
'from   employee',
'order by emp_name;'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26855013334905730384)
,p_name=>'P32_USER_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_item_source_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_prompt=>'User Type  Name'
,p_source=>'USER_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select user_type_name, USER_TYPE_ID',
'from   user_type',
'order  by user_type_name;'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26855013759452730384)
,p_name=>'P32_USER_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_item_source_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_prompt=>'User status Name'
,p_source=>'USER_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select user_status_name, user_status_id',
'from   user_status',
'order  by user_status_name;'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26855014180369730384)
,p_name=>'P32_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_item_source_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26855014593825730384)
,p_name=>'P32_PASSWORD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_item_source_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_prompt=>'Password'
,p_source=>'PASSWORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'## Password must be 8 character  ',
'## Use At lest one Uppercase like A-Z',
'## Use special Character like "!"#$%&''()*+,-./:;<=>?@[\]^_`{|}~"',
''))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26855014983551730385)
,p_name=>'P32_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_item_source_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_prompt=>'Image'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<canvas id="image-preview" width="120" height="120"  style="border: 1px solid #505f6d; background-color: white;">',
''))
,p_source=>'IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26855015394067730385)
,p_name=>'P32_ACTION_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_item_source_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_source=>'ACTION_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26855015701417730385)
,p_name=>'P32_ACTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_item_source_plug_id=>wwv_flow_api.id(26855012171389730369)
,p_source=>'ACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27749410775521683534)
,p_validation_name=>'username_not_null'
,p_validation_sequence=>10
,p_validation=>'P32_USERNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Username should not be Blank. Please add username. Thanks'
,p_associated_item=>wwv_flow_api.id(26855014180369730384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27749410826720683535)
,p_validation_name=>'User_name_unique'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username ',
'from   user_info ',
'where  upper(username) = upper(:P32_USERNAME);'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This Username already existed ',
'Please add new Username. Thanks '))
,p_when_button_pressed=>wwv_flow_api.id(26855020304475730388)
,p_associated_item=>wwv_flow_api.id(26855014180369730384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27749410993000683536)
,p_validation_name=>'Employee_id_uniquee'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee.employee_id',
'from   user_info, employee ',
'where  user_info.employee_id=employee.employee_id ',
'and employee.employee_id=:P32_EMPLOYEE_ID;'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'One Employee Could not use multiple accounts. please create account for another employee. Thanks'
,p_when_button_pressed=>wwv_flow_api.id(26855020304475730388)
,p_associated_item=>wwv_flow_api.id(26855012976780730383)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(30957567181980094009)
,p_validation_name=>'Password Not Null'
,p_validation_sequence=>40
,p_validation=>'P32_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Password should not be blank. Please provide Password. Thanks'
,p_associated_item=>wwv_flow_api.id(26855014593825730384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(30957567480422094012)
,p_validation_name=>'password validation'
,p_validation_sequence=>50
,p_validation=>'P32_PASSWORD'
,p_validation2=>' !"#$%&''()*+,-./:;<=>?@[\]^_`{|}~'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_AT_LEAST_ONE_CHAR_IN_STRING2'
,p_error_message=>'Use at least  One special character like  !"#$%&''()*+,-./:;<=>?@[\]^_`{|}~'
,p_associated_item=>wwv_flow_api.id(26855014593825730384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(30957567504423094013)
,p_validation_name=>'Password_for_one_upper_case'
,p_validation_sequence=>60
,p_validation=>'P32_PASSWORD'
,p_validation2=>'	A	B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W	X	Y	Z'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_AT_LEAST_ONE_CHAR_IN_STRING2'
,p_error_message=>'Use at least One Uppercase letter in your password like A-Z '
,p_associated_item=>wwv_flow_api.id(26855014593825730384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(30957567631241094014)
,p_validation_name=>'eight_charactar_limit'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if length(:P32_PASSWORD) <8 then',
'return  ''Password minimum length must be 8 character'';',
'else ',
'null;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_api.id(26855014593825730384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26839972247722067803)
,p_name=>'image-preview'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P32_IMAGE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26839972341967067804)
,p_event_id=>wwv_flow_api.id(26839972247722067803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var canvas = $x(''image-preview'');',
'var ctx    = canvas.getContext(''2d'');',
'var img    = new Image;',
'',
'img.src = window.URL.createObjectURL(this.triggeringElement.files[0]);',
'img.onload = function() {',
'  if (img.width > 200) {',
'   canvas.style.width = "100px";',
'  }',
'  canvas.width = img.width;',
'  canvas.height = img.height;',
'  ctx.drawImage(img, 0, 0);',
'  $("#container-img-preview").show();',
'}',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(28026913604352190050)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P32_IMAG_PREVIE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28631397323707954501)
,p_event_id=>wwv_flow_api.id(28026913604352190050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var canvas = $x(''image-preview'');',
'var ctx    = canvas.getContext(''2d'');',
'var img    = new Image;',
'',
'img.src = window.URL.createObjectURL(this.triggeringElement.files[0]);',
'img.onload = function() {',
'  if (img.width > 200) {',
'   canvas.style.width = "100px";',
'  }',
'  canvas.width = img.width;',
'  canvas.height = img.height;',
'  ctx.drawImage(img, 0, 0);',
'  $("#container-img-preview").show();',
'}',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26855021529930730389)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(26855012171389730369)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form User Entry Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26855021190567730389)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(26855012171389730369)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form User Entry Form'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26839972499534067805)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre_insert_dt_user_pk'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :p32_user_info_id is null then ',
'select nvl(max(user_info_id),0)+1',
'into  :p32_user_info_id',
'from   user_info;',
'end if;',
'',
':p32_action_user:=v(''APP_USER'');',
'',
':p32_action_date:=sysdate;',
'',
'exception',
' when  others then ',
'  null;',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
