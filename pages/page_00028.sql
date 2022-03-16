prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Supplier Form'
,p_alias=>'GUEST-FORM'
,p_step_title=>'Supplier Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region-headerItems--title { ',
'',
'    text-align: center !important;',
'',
'} '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#form_title{',
'    text-align: center;',
'   margin: 0 0 0 350px;',
'   font-style: bold;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210910070832'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24746636748050215620)
,p_plug_name=>'<div id="form_title"><h2> Supplier Entry Form </h2></div>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-lg:margin-left-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_query_type=>'TABLE'
,p_query_table=>'SUPPLIER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24746662033828218624)
,p_plug_name=>'Supplier Report'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
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
 p_id=>wwv_flow_api.id(24746643130091215641)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P28_SUPPLIER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24746641977042215639)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24746643579383215641)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P28_SUPPLIER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24746642715597215641)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P28_SUPPLIER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24746643840741215641)
,p_branch_action=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24619613904215071724)
,p_name=>'P28_SUPPLIER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_item_source_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_source=>'SUPPLIER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24619614080391071725)
,p_name=>'P28_SUPPLIER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_item_source_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_prompt=>'Supplier Name'
,p_source=>'SUPPLIER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cMaxlength=>100
,p_cHeight=>2
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_api.id(24619614196061071726)
,p_name=>'P28_WEBSITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_item_source_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_prompt=>'Website'
,p_source=>'WEBSITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cMaxlength=>500
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_api.id(24746637826416215629)
,p_name=>'P28_CELL_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_item_source_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_prompt=>'Cell Number'
,p_format_mask=>'99999S999999'
,p_source=>'CELL_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cMaxlength=>50
,p_cHeight=>2
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_api.id(24746638244036215630)
,p_name=>'P28_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_item_source_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cMaxlength=>200
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_api.id(24746638636170215630)
,p_name=>'P28_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_item_source_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cMaxlength=>500
,p_cHeight=>3
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_api.id(24746639403162215631)
,p_name=>'P28_ACTION_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_item_source_plug_id=>wwv_flow_api.id(24746636748050215620)
,p_source=>'ACTION_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026909458635190008)
,p_validation_name=>'supplier_name_unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supplier_name',
'from   supplier ',
'where  supplier_name = :P28_SUPPLIER_NAME;'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'This supplier Name is existed please Add new supplier. Thanks'
,p_when_button_pressed=>wwv_flow_api.id(24746643579383215641)
,p_associated_item=>wwv_flow_api.id(24619614080391071725)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026909590666190009)
,p_validation_name=>'email@_sign_validation'
,p_validation_sequence=>20
,p_validation=>'P28_EMAIL'
,p_validation2=>'@'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please Add "@" in supplier email.'
,p_associated_item=>wwv_flow_api.id(24746638244036215630)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026909777919190011)
,p_validation_name=>'Email_not_null'
,p_validation_sequence=>30
,p_validation=>'P28_EMAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Email should not be null. Please add email. Thanks'
,p_associated_item=>wwv_flow_api.id(24746638244036215630)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026909676609190010)
,p_validation_name=>'supplier_name_not_null'
,p_validation_sequence=>40
,p_validation=>'P28_SUPPLIER_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Supplier Name should not be null. Please add supplier name. Thanks'
,p_associated_item=>wwv_flow_api.id(24619614080391071725)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026909866861190012)
,p_validation_name=>'cell_number_not_null'
,p_validation_sequence=>50
,p_validation=>'P28_CELL_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Cell Number should not be null. Please add Cell Number. Thanks'
,p_associated_item=>wwv_flow_api.id(24746637826416215629)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026910029250190014)
,p_validation_name=>'address_not_null'
,p_validation_sequence=>60
,p_validation=>'P28_ADDRESS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Address should not be null. Please add Cell Address . Thanks'
,p_associated_item=>wwv_flow_api.id(24746638636170215630)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24746644738037215643)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(24746636748050215620)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Guest Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24746644381256215643)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(24746636748050215620)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Guest Form'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24619613876705071723)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre_insert_user_guest_id_process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' if :P28_supplier_ID is null then',
'  select nvl(max(supplier_id),0)+1',
'  into  :P28_supplier_ID',
'  from  supplier;',
' end if;',
'  :P28_ACTION_USER := v(''APP_USER'');',
'',
'',
'exception',
' when others then ',
'  null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
