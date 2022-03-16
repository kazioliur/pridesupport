prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Supplier  Payment  Form'
,p_alias=>'SUPPLIER-PAYMENT-FORM'
,p_step_title=>'Supplier  Payment  Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#form_title{',
'    text-align: center;',
'   margin: 0 0 0 200px;',
'   font-style: bold;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210916085559'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25864007038565220698)
,p_plug_name=>'<div id="form_title"><h2> Supplier  Payment  Form </h2></div>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:t-Form--leftLabels:margin-top-none:margin-left-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>2
,p_query_type=>'TABLE'
,p_query_table=>'PURCHASE_PAYMENT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25864031724971223632)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(27675705415248093049)
,p_name=>'Suppliler Due Details'
,p_template=>wwv_flow_api.id(21352593822443582985)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select supplier_name from supplier where supplier_id=purchase_master.supplier_id)',
'       SUPPLIER_NAME,',
'       INVOICE,',
'       PURCHASE_DATE,',
'       TOTAL_AMOUNT,',
'       DISCOUNT,',
'       GRAND_TOTAL,',
'       PAYMENT_MODE,',
'       PAID_AMOUNT,',
'       DUE',
'  from PURCHASE_MASTER',
'  Where SUPPLIER_ID=:P34_SUPPLIER_ID;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P34_SUPPLIER_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'1'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27749407413841683501)
,p_query_column_id=>1
,p_column_alias=>'SUPPLIER_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Supplier'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27675705533708093050)
,p_query_column_id=>2
,p_column_alias=>'INVOICE'
,p_column_display_sequence=>20
,p_column_heading=>'Invoice'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27749407506477683502)
,p_query_column_id=>3
,p_column_alias=>'PURCHASE_DATE'
,p_column_display_sequence=>30
,p_column_heading=>'Purchase Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27749407621159683503)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_AMOUNT'
,p_column_display_sequence=>40
,p_column_heading=>'Total Amount'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27749407722760683504)
,p_query_column_id=>5
,p_column_alias=>'DISCOUNT'
,p_column_display_sequence=>50
,p_column_heading=>'Discount'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27749407869994683505)
,p_query_column_id=>6
,p_column_alias=>'GRAND_TOTAL'
,p_column_display_sequence=>60
,p_column_heading=>'Grand Total'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27749407964948683506)
,p_query_column_id=>7
,p_column_alias=>'PAYMENT_MODE'
,p_column_display_sequence=>70
,p_column_heading=>'Payment Mode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27749408013744683507)
,p_query_column_id=>8
,p_column_alias=>'PAID_AMOUNT'
,p_column_display_sequence=>80
,p_column_heading=>'Paid Amount'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27749408179841683508)
,p_query_column_id=>9
,p_column_alias=>'DUE'
,p_column_display_sequence=>90
,p_column_heading=>'Due'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(27749408451437683511)
,p_name=>'Supplier Due Summary'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select(select sum(due) ',
'      from   purchase_master where supplier_id = :P34_SUPPLIER_ID) total_due,',
'      nvl((select sum(amount) from  PURCHASE_PAYMENT where supplier_id = :P34_SUPPLIER_ID),0) Paid,',
'      (select sum(due) ',
'      from   purchase_master where supplier_id = :P34_SUPPLIER_ID) -',
'      nvl((select sum(amount) from  PURCHASE_PAYMENT where supplier_id = :P34_SUPPLIER_ID),0) current_due',
'from dual;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P34_SUPPLIER_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27749408596072683512)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_DUE'
,p_column_display_sequence=>10
,p_column_heading=>'Total Due'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27749408855522683515)
,p_query_column_id=>2
,p_column_alias=>'PAID'
,p_column_display_sequence=>20
,p_column_heading=>'Due Paid'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27749409037924683517)
,p_query_column_id=>3
,p_column_alias=>'CURRENT_DUE'
,p_column_display_sequence=>30
,p_column_heading=>'Current Due'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25864012795268220713)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P34_PURCHASE_PAYMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25864011508466220706)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25864013136779220713)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P34_PURCHASE_PAYMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25864012328969220712)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P34_PURCHASE_PAYMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25864013416673220713)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25864007331397220698)
,p_name=>'P34_PURCHASE_PAYMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_item_source_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_source=>'PURCHASE_PAYMENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25864007766280220704)
,p_name=>'P34_SUPPLIER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_item_source_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_prompt=>'Supplier Name'
,p_source=>'SUPPLIER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SUPPLIER_NAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supplier_name, supplier_id',
'from   supplier',
'order  by supplier_id desc;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25864008133642220704)
,p_name=>'P34_PAYMENT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_item_source_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_prompt=>'Payment Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'PAYMENT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cMaxlength=>255
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_api.id(25864008574635220704)
,p_name=>'P34_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_item_source_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_prompt=>'Amount'
,p_source=>'AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25864008981294220704)
,p_name=>'P34_ACTION_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_item_source_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_source=>'ACTION_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25864009366474220705)
,p_name=>'P34_ACTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_item_source_plug_id=>wwv_flow_api.id(25864007038565220698)
,p_source=>'ACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27749408268645683509)
,p_name=>'Report Refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_SUPPLIER_ID'
,p_condition_element=>'P34_SUPPLIER_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27749408373462683510)
,p_event_id=>wwv_flow_api.id(27749408268645683509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(27675705415248093049)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27749408911320683516)
,p_event_id=>wwv_flow_api.id(27749408268645683509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(27749408451437683511)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25864014383448220714)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(25864007038565220698)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Supplier  Payment  Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25864013956390220714)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(25864007038565220698)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Supplier  Payment  Form'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25760793563337455409)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre_insert_process_pk_user_date'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' if :P34_PURCHASE_PAYMENT_ID is null then',
'  select nvl(max(PURCHASE_PAYMENT_ID),0) + 1',
'  into :P34_PURCHASE_PAYMENT_ID',
'  from   purchase_payment;',
'end if;',
' :P34_ACTION_DATE := sysdate;',
':P34_ACTION_USER := v(''APP_USER'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
