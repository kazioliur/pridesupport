prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Employee Form'
,p_alias=>'EMPLOYEE-FORM'
,p_step_title=>'Employee Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(',
'''body'').on(''keydown'', ''input, select, textarea'', function(e) {',
'    var self = $(this)',
'      , form = self.parents(''form:eq(0)'')',
'      , focusable',
'      , next',
'      ;',
'    if (e.keyCode == 13) {',
'        focusable = form.find(''input,select,textarea,tabindex'').filter('':visible'');',
'        next = focusable.eq(focusable.index(this)+1);',
'        if (next.length) {',
'            next.focus();',
'        } else',
'        return false;',
'    }',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#form_title{',
'    text-align: center;',
'   margin: 0 0 0 300px;',
'   font-style: bold;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210922032029'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25206624186212169437)
,p_plug_name=>'<div id="form_title"><h2> Employee Information Entry Form </h2></div>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_query_type=>'TABLE'
,p_query_table=>'EMPLOYEE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25206650672627172577)
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
 p_id=>wwv_flow_api.id(25206637535724169447)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P21_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25206636376077169446)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25206637948880169447)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P21_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25206637119612169447)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P21_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25206638205186169447)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25206624450768169438)
,p_name=>'P21_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Employee ID'
,p_source=>'EMPLOYEE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25206624893883169438)
,p_name=>'P21_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Department Name'
,p_source=>'DEPARTMENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select department_name,department_id',
'from   department;'))
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
 p_id=>wwv_flow_api.id(25206625202906169439)
,p_name=>'P21_DESIGNATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Designation Name'
,p_source=>'DESIGNATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select designation_name,designation_id',
'from   designation;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25206625610922169439)
,p_name=>'P21_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
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
 p_id=>wwv_flow_api.id(25206626014228169439)
,p_name=>'P21_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
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
 p_id=>wwv_flow_api.id(25206626491260169440)
,p_name=>'P21_CELL_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Cell Number'
,p_source=>'CELL_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25206626851675169440)
,p_name=>'P21_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25206627275980169440)
,p_name=>'P21_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25206627603766169440)
,p_name=>'P21_DATE_OF_BIRTH'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Date of Birth'
,p_format_mask=>'DD Month YYYY'
,p_source=>'DATE_OF_BIRTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25206628085232169441)
,p_name=>'P21_RELIGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Religion'
,p_source=>'RELIGION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Islam;Islam,Hindu;Hindu,Budho;Budho,Cristan;Cristan,Others;Others'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25206628485031169441)
,p_name=>'P21_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Gender'
,p_source=>'GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Male;Male,Female;Female,Others;Others'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-none:margin-right-none'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25206628860444169441)
,p_name=>'P21_NATIONALITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Are you Bangladeshi?'
,p_source=>'NATIONALITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Bangladeshi'
,p_attribute_03=>'Foreigner'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25206629273750169442)
,p_name=>'P21_NID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'NID'
,p_source=>'NID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(25206629677467169442)
,p_name=>'P21_JOIN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Join Date'
,p_format_mask=>'DD Month YYYY'
,p_source=>'JOIN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25206630032877169442)
,p_name=>'P21_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Salary'
,p_source=>'SALARY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25206630475286169443)
,p_name=>'P21_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_prompt=>'Image'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<canvas id="image-preview" width="120" height="120"  style="border: 1px solid #505f6d; background-color: white;">',
'',
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
 p_id=>wwv_flow_api.id(25206630861364169443)
,p_name=>'P21_ACTION_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_source=>'ACTION_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30957566773859094005)
,p_name=>'P21_ACTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_item_source_plug_id=>wwv_flow_api.id(25206624186212169437)
,p_source=>'ACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27749411491607683541)
,p_validation_name=>'employee_id_uniquee'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee_id ',
'from   employee  ',
'where  employee_id = :P21_EMPLOYEE_ID;'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This employee id already existed ',
'    Please add new employee id . Thanks ',
''))
,p_when_button_pressed=>wwv_flow_api.id(25206637948880169447)
,p_associated_item=>wwv_flow_api.id(25206624450768169438)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27749411596482683542)
,p_validation_name=>'employee_id_not_null'
,p_validation_sequence=>20
,p_validation=>'P21_EMPLOYEE_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Employee id should not be null. Please add employee id. Thanks'
,p_associated_item=>wwv_flow_api.id(25206624450768169438)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27749411603112683543)
,p_validation_name=>'Employee_id_not_null'
,p_validation_sequence=>30
,p_validation=>'P21_FIRST_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'First Name  should not be null. Please add First Name. Thanks'
,p_associated_item=>wwv_flow_api.id(25206625610922169439)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27749411745567683544)
,p_validation_name=>'last_name_not_null'
,p_validation_sequence=>40
,p_validation=>'P21_LAST_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Last Name  should not be null. Please add Last Name. Thanks'
,p_associated_item=>wwv_flow_api.id(25206626014228169439)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27749412145740683548)
,p_validation_name=>'unique_nid'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nid',
'from   employee ',
'where  NID = :P21_NID;'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This NID already existed. ',
'    Please add new employee NID . Thanks ',
''))
,p_when_button_pressed=>wwv_flow_api.id(25206637948880169447)
,p_associated_item=>wwv_flow_api.id(25206629273750169442)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27749412295548683549)
,p_validation_name=>'nid_not_null'
,p_validation_sequence=>80
,p_validation=>'P21_NID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'NID should not be null. Please add NID. Thanks'
,p_associated_item=>wwv_flow_api.id(25206629273750169442)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27749412306654683550)
,p_validation_name=>'email_not_null'
,p_validation_sequence=>90
,p_validation=>'P21_EMAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Email should not be null. Please add Email. Thanks'
,p_associated_item=>wwv_flow_api.id(25206626851675169440)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026908729082190001)
,p_validation_name=>'email_@_validation'
,p_validation_sequence=>100
,p_validation=>'P21_EMAIL'
,p_validation2=>'@'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please add ''@'' in your given Email. Thanks'
,p_associated_item=>wwv_flow_api.id(25206626851675169440)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026908872326190002)
,p_validation_name=>'salary_validation'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_salary                 employee.salary%type := :P21_SALARY;',
'',
'begin',
'',
'if v_salary between 1000 and 25000 then',
' return true;',
' else ',
' return false;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Salary Must be 1000 to 25000 Tk.'
,p_associated_item=>wwv_flow_api.id(25206630032877169442)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026908979500190003)
,p_validation_name=>'join_date_validation'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_join_date            date := :P21_JOIN_DATE;',
'',
'begin',
'',
'if v_join_date > sysdate then',
' return ''Join shoud not be future date. Please add present or past date. Thanks'';',
' else',
'  return null;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_api.id(25206629677467169442)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026909098167190004)
,p_validation_name=>'date_of_birth_validation'
,p_validation_sequence=>130
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_birth_date            date := :P21_DATE_OF_BIRTH;',
'',
'',
'begin',
' if (sysdate - v_birth_date)/365 > 18 then',
'    return true;',
' else ',
' return false;',
'   ',
' end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'We do not accept child labor. Employee age should be over 18 years. Thanks'
,p_associated_item=>wwv_flow_api.id(25206627603766169440)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026909119810190005)
,p_validation_name=>'cell_number_unique'
,p_validation_sequence=>140
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cell_number',
'from   employee ',
'where  cell_number = :P21_CELL_NUMBER;'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'This cell number is used by other employee. please add new cell number. Thanks'
,p_when_button_pressed=>wwv_flow_api.id(25206637948880169447)
,p_associated_item=>wwv_flow_api.id(25206626491260169440)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026909273637190006)
,p_validation_name=>'cell_number_not_null'
,p_validation_sequence=>150
,p_validation=>'P21_CELL_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Cell Number Should not be null. Please add cell Number. Thanks'
,p_associated_item=>wwv_flow_api.id(25206626491260169440)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026909331560190007)
,p_validation_name=>'date_of_birth_not_null'
,p_validation_sequence=>160
,p_validation=>'P21_DATE_OF_BIRTH'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Date of Birth should not be null. Please add date of birth. Thanks'
,p_associated_item=>wwv_flow_api.id(25206627603766169440)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28631397469065954502)
,p_validation_name=>'Designation_not_null'
,p_validation_sequence=>170
,p_validation=>'P21_DESIGNATION_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Designation should not be blank. Please add designation. Thanks'
,p_associated_item=>wwv_flow_api.id(25206625202906169439)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(31365163829790775208)
,p_validation_name=>'join_date_not_null'
,p_validation_sequence=>180
,p_validation=>'P21_JOIN_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Join Date should not by Blank. Please add join date. Thanks'
,p_associated_item=>wwv_flow_api.id(25206629677467169442)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25202823413139038706)
,p_name=>'image-preview'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_IMAGE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25202823581409038707)
,p_event_id=>wwv_flow_api.id(25202823413139038706)
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
'}'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25206639135210169448)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(25206624186212169437)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Employee Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25206638784271169448)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(25206624186212169437)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Employee Form'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25202823132169038703)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Action User'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':p21_action_user := v(''APP_USER'');',
':P21_ACTION_DATE := sysdate;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
