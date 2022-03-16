prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Business_status'
,p_alias=>'BUSINESS-STATUS'
,p_step_title=>'Business_status'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210920083413'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34335708326610723937)
,p_plug_name=>'Parameter'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<h1 style="color: #3333ff;"><center> Period-Wise Business Status <center> </h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(34335708187570723935)
,p_name=>'Total Purchase Paid'
,p_parent_plug_id=>wwv_flow_api.id(34335708326610723937)
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>9
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>3
,p_display_column=>4
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select total_purchase(:P77_FROM_DATE,:P77_TO_DATE) Total_purchase_paid',
'from   dual;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P77_FROM_DATE,P77_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34605155133401771428)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_PURCHASE_PAID'
,p_column_display_sequence=>10
,p_column_heading=>'Total Purchase Paid'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:200px ;" > #TOTAL_PURCHASE_PAID# </span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(34335709194127723945)
,p_name=>'Total Payable Due'
,p_parent_plug_id=>wwv_flow_api.id(34335708326610723937)
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>11
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>3
,p_display_column=>4
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select total_Payble_due(:P77_FROM_DATE,:P77_TO_DATE) total_Payable_due',
'from   dual;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P77_FROM_DATE,P77_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34605155209792771429)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_PAYABLE_DUE'
,p_column_display_sequence=>10
,p_column_heading=>'Total Payable Due'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:200px ;" > #TOTAL_PAYABLE_DUE# </span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(34605154447254771421)
,p_name=>'Total Payable vat'
,p_parent_plug_id=>wwv_flow_api.id(34335708326610723937)
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>31
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>3
,p_display_column=>4
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select total_payable_vat(:P77_FROM_DATE,:P77_TO_DATE) total_payable_vat',
'from   dual;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P77_FROM_DATE,P77_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34605155337734771430)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_PAYABLE_VAT'
,p_column_display_sequence=>10
,p_column_heading=>'Total Payable Vat'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:200px ;" > #TOTAL_PAYABLE_VAT# </span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(34605154626997771423)
,p_name=>'Others  Expense'
,p_parent_plug_id=>wwv_flow_api.id(34335708326610723937)
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>51
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>3
,p_display_column=>4
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select total_expense(:P77_FROM_DATE,:P77_TO_DATE) Others_expense',
'from   dual;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P77_FROM_DATE,P77_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34605155474267771431)
,p_query_column_id=>1
,p_column_alias=>'OTHERS_EXPENSE'
,p_column_display_sequence=>10
,p_column_heading=>'Others Expense'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:200px ;" > #OTHERS_EXPENSE# </span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(34605155528731771432)
,p_name=>'Total Depreciation'
,p_parent_plug_id=>wwv_flow_api.id(34335708326610723937)
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>41
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>3
,p_display_column=>4
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select total_depreciation_cost(:P77_FROM_DATE,:P77_TO_DATE) Total_depreciation_cost',
'from   dual;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P77_FROM_DATE,P77_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34605155695894771433)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_DEPRECIATION_COST'
,p_column_display_sequence=>10
,p_column_heading=>'Total Depreciation Cost'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:200px ;" > #TOTAL_DEPRECIATION_COST# </span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(34605155897933771435)
,p_name=>'Total Income'
,p_parent_plug_id=>wwv_flow_api.id(34335708326610723937)
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>21
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>3
,p_display_column=>9
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select round(sum(grant_total))',
'from   order_master',
'where  order_date between :P77_FROM_DATE and :P77_TO_DATE;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P77_FROM_DATE,P77_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34605156078575771437)
,p_query_column_id=>1
,p_column_alias=>'ROUND(SUM(GRANT_TOTAL))'
,p_column_display_sequence=>10
,p_column_heading=>'Total Income'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:200px ;" > #ROUND(SUM(GRANT_TOTAL))# </span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34605156169027771438)
,p_plug_name=>'Business Status'
,p_parent_plug_id=>wwv_flow_api.id(34335708326610723937)
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>71
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(34605156360205771440)
,p_name=>'Total Expenditure'
,p_parent_plug_id=>wwv_flow_api.id(34335708326610723937)
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>61
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>3
,p_display_column=>4
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (total_purchase(:P77_FROM_DATE,:P77_TO_DATE) + total_Payble_due(:P77_FROM_DATE,:P77_TO_DATE) + total_payable_vat(:P77_FROM_DATE,:P77_TO_DATE) + total_depreciation_cost(:P77_FROM_DATE,:P77_TO_DATE) + total_expense(:P77_FROM_DATE,:P77_TO_DATE)) '
||'Total_Expenditure ',
'From Dual;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P77_FROM_DATE,P77_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34605156587194771442)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_EXPENDITURE'
,p_column_display_sequence=>10
,p_column_heading=>'Total Expenditure'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<span style="display:block ; width:200px ;" > #TOTAL_EXPENDITURE# </span>'))
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34605156971542771446)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(34335708326610723937)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34335708478849723938)
,p_name=>'P77_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(34335708326610723937)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-left-none:margin-right-none'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34335708574062723939)
,p_name=>'P77_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(34335708326610723937)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-left-none:margin-right-none'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34605156661409771443)
,p_name=>'P77_BUSINESS_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(34605156169027771438)
,p_prompt=>'Business Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_column=>7
,p_field_template=>wwv_flow_api.id(21352784150236583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34335708844798723942)
,p_name=>'page_submit'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_FROM_DATE,P77_TO_DATE'
,p_condition_element=>'P77_FROM_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34335708924094723943)
,p_event_id=>wwv_flow_api.id(34335708844798723942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34605156725770771444)
,p_name=>'Business Status'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34605156805906771445)
,p_event_id=>wwv_flow_api.id(34605156725770771444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_BUSINESS_STATUS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_business_status      number;',
'begin',
'',
'select round(nvl(total_income(:P77_FROM_DATE,:P77_TO_DATE),0) -(nvl(total_purchase(:P77_FROM_DATE,:P77_TO_DATE),0) +',
' nvl(total_Payble_due(:P77_FROM_DATE,:P77_TO_DATE),0) +',
' nvl(total_payable_vat(:P77_FROM_DATE,:P77_TO_DATE),0) +',
' nvl(total_depreciation_cost(:P77_FROM_DATE,:P77_TO_DATE),0) + ',
'nvl(total_expense(:P77_FROM_DATE,:P77_TO_DATE),0))) Business_status',
'into  v_business_status',
'From Dual;',
' if v_business_status > 0 ',
'   then  ',
'      return ''Profit  ''||to_char(v_business_status,''99,99,99,999.99'');',
'else',
'      return  ''Loss  ''||to_char(v_business_status,''99,99,99,999.99'');',
'      end if ;',
'end;'))
,p_attribute_07=>'P77_FROM_DATE,P77_TO_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34605157038576771447)
,p_name=>'print'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34605156971542771446)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34605157108856771448)
,p_event_id=>wwv_flow_api.id(34605157038576771447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open(''f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=business_status_with_format_mask'',''_blank'');',
''))
);
wwv_flow_api.component_end;
end;
/
