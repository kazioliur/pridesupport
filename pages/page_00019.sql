prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Add user'
,p_alias=>'ADD-USER'
,p_step_title=>'Add user'
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
'        } else {',
'            form.submit();',
'        }',
'        return false;',
'    }',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'#form_title{',
'    text-align: center;',
'   margin: 0 0 0 240px;',
'   font-style: bold;}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210811204826'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24416980621766454854)
,p_plug_name=>'<div id="form_title"><h2> User Entry Form </h2></div>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-lg:margin-left-none:margin-right-none'
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
 p_id=>wwv_flow_api.id(24416999998459457962)
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
 p_id=>wwv_flow_api.id(24416987794170454859)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P19_USER_INFO_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24416986575967454858)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24416988194076454859)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P19_USER_INFO_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24416987302010454859)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P19_USER_INFO_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24416988470462454859)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24416980928236454855)
,p_name=>'P19_USER_INFO_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_item_source_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_source=>'USER_INFO_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24416981746854454855)
,p_name=>'P19_USER_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_item_source_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_prompt=>'User Type Name'
,p_source=>'USER_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select user_type_name, user_type_id from user_type order by user_type_name'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-top-sm:margin-bottom-none:margin-left-none:margin-right-none'
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
 p_id=>wwv_flow_api.id(24416982107830454856)
,p_name=>'P19_USER_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_item_source_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_prompt=>'Status Name'
,p_source=>'USER_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select user_status_name, user_status_id from user_status order by user_status_name'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-left-none:margin-right-none'
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
 p_id=>wwv_flow_api.id(24416982507030454856)
,p_name=>'P19_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_item_source_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-none:margin-right-none'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24416982994125454856)
,p_name=>'P19_PASSWORD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_item_source_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_prompt=>'Password'
,p_source=>'PASSWORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-left-none:margin-right-none'
,p_is_persistent=>'N'
,p_inline_help_text=>'<div style = > '
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24416983772805454857)
,p_name=>'P19_ACTION_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_item_source_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_source=>'ACTION_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26568622291832976049)
,p_name=>'P19_ACTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_item_source_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_source=>'ACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26839972148962067802)
,p_name=>'P19_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_item_source_plug_id=>wwv_flow_api.id(24416980621766454854)
,p_prompt=>'Employee Id'
,p_source=>'EMPLOYEE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'FOOD_MENU_NAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select food_menu_name, food_menu_id',
'from   food_menu',
'order by food_menu_name;'))
,p_lov_display_null=>'YES'
,p_grid_label_column_span=>7
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'NO_FETCH'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23903648137066998736)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P19_IMAGE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23903648296834998737)
,p_event_id=>wwv_flow_api.id(23903648137066998736)
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
 p_id=>wwv_flow_api.id(24416989344988454860)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(24416980621766454854)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Add user'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24416988936837454860)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(24416980621766454854)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add user'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23903648096846998735)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre_insert_user_info_id_process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :p19_user_info_id is null then ',
'select nvl(max(user_info_id),0)+1',
'into  :p19_user_info_id',
'from   user_info;',
'end if;',
'',
':p19_action_user:=v(''APP_USER'');',
':P19_ACTION_DATE := sysdate;',
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
