prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'User Type Form'
,p_alias=>'USER-TYPE-FORM'
,p_step_title=>'User Type Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#form_title{',
'    text-align: center;',
'   margin: 0 0 0 170px;',
'   font-style: bold;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210823024143'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24400897861382171024)
,p_plug_name=>'<div id="form_title"><h2> User Type Entry Form </h2></div>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-lg:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_plug_display_column=>4
,p_query_type=>'TABLE'
,p_query_table=>'USER_TYPE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24400915297573174231)
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
 p_id=>wwv_flow_api.id(24400901474576171027)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24400897861382171024)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P5_USER_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24400900252232171026)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24400897861382171024)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24400901891618171027)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24400897861382171024)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P5_USER_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24400901074084171027)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24400897861382171024)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P5_USER_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24400902180816171027)
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24400898142647171024)
,p_name=>'P5_USER_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24400897861382171024)
,p_item_source_plug_id=>wwv_flow_api.id(24400897861382171024)
,p_source=>'USER_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24400898569181171025)
,p_name=>'P5_USER_TYPE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24400897861382171024)
,p_item_source_plug_id=>wwv_flow_api.id(24400897861382171024)
,p_prompt=>'User Type Name'
,p_source=>'USER_TYPE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cHeight=>2
,p_grid_label_column_span=>4
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
 p_id=>wwv_flow_api.id(24400898937139171025)
,p_name=>'P5_ACTION_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24400897861382171024)
,p_item_source_plug_id=>wwv_flow_api.id(24400897861382171024)
,p_source=>'ACTION_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25760793934727455413)
,p_name=>'P5_ACTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24400897861382171024)
,p_item_source_plug_id=>wwv_flow_api.id(24400897861382171024)
,p_source=>'ACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27749410239736683529)
,p_validation_name=>'User_type_name_not_null'
,p_validation_sequence=>10
,p_validation=>'P5_USER_TYPE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'User Type Name should not be null. Please provide User Type Name.'
,p_when_button_pressed=>wwv_flow_api.id(24400901891618171027)
,p_associated_item=>wwv_flow_api.id(24400898569181171025)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27749410369033683530)
,p_validation_name=>'User_Type_Name'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select user_type_name',
'from   user_type ',
'where  Upper(user_type_name) = Upper(:P5_USER_TYPE_NAME);'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'This User Type Name as exists. Please Insert New User Type.'
,p_when_button_pressed=>wwv_flow_api.id(24400901891618171027)
,p_associated_item=>wwv_flow_api.id(24400898569181171025)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28631397583430954503)
,p_validation_name=>'user_type_not_number'
,p_validation_sequence=>30
,p_validation=>'P5_USER_TYPE_NAME'
,p_validation2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'QWERTYUIOPASDFGHJKLZXCVBNM',
'qwertyuiopasdfgh . jklzxcvbnm'))
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_ONLY_CHAR_IN_STRING2'
,p_error_message=>'Only Character value is allow.'
,p_associated_item=>wwv_flow_api.id(24400898569181171025)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24400903011368171028)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(24400897861382171024)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form User Type Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24400902644873171028)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(24400897861382171024)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form User Type Form'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23903647807495998733)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre_insert_user_type_id_process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :p5_user_type_id is null then ',
'select nvl(max(user_type_id),0)+1',
'into  :p5_user_type_id',
'from   user_type;',
'end if;',
'',
':p5_action_user := v(''APP_USER'');',
':p5_action_date:= sysdate;',
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
