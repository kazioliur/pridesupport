prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Daily_purchae_report'
,p_alias=>'DAILY-PURCHAE-REPORT'
,p_step_title=>'Daily_purchae_report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210919040012'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33456297146074437346)
,p_name=>'Details Report'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>8
,p_display_column=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select purchase_item_name from purchase_item where PURCHASE_ITEM_ID = PURCHASE_DETAIL.purchase_item_id) PURCHASE_ITEM_Name,',
'        sum(QUANTITY) Quantity,UNIT_PRICE,sum(QUANTITY) * UNIT_PRICE Unit_total',
'from   PURCHASE_DETAIL,PURCHASE_MASTER',
'Where  PURCHASE_DETAIL.invoice = PURCHASE_MASTER. invoice',
'and    PURCHASE_DATE = :P51_SALES_DATE',
'group  by PURCHASE_ITEM_ID,UNIT_PRICE;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P51_SALES_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34042703050615531414)
,p_query_column_id=>1
,p_column_alias=>'PURCHASE_ITEM_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Purchase Item Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="display:block ; width:330px ;" > #PURCHASE_ITEM_NAME# </span>',
''))
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33456297303493437348)
,p_query_column_id=>2
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>20
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:100px ;" > #QUANTITY# </span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33456297433731437349)
,p_query_column_id=>3
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>30
,p_column_heading=>'Unit Price'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:150px ;" > #UNIT_PRICE# </span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34042703168186531415)
,p_query_column_id=>4
,p_column_alias=>'UNIT_TOTAL'
,p_column_display_sequence=>40
,p_column_heading=>'Unit Total'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="display:block ; width:180px ;" > #UNIT_TOTAL# </span>',
''))
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34042703905025531423)
,p_plug_name=>'master_report'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_column=>5
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(TOTAL_AMOUNT) Total_price, sum(DISCOUNT) Discount, sum(GRAND_TOTAL) Grand_total,sum(PAID_AMOUNT) Paid_amount, sum(DUE)',
'from   PURCHASE_MASTER',
'where  PURCHASE_DATE = :P51_SALES_DATE'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_ajax_items_to_submit=>'P51_SALES_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(34042706607541531450)
,p_name=>'TOTAL_PRICE'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Total Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(34124649811595150801)
,p_name=>'DISCOUNT'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Discount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(34124649962630150802)
,p_name=>'GRAND_TOTAL'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Grand Total'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(34124650055590150803)
,p_name=>'PAID_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Paid Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(34124650162955150804)
,p_name=>'SUM(DUE)'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Due'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60380786679671749863)
,p_plug_name=>'Parameter Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_display_column=>5
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'</center> <h1> Daily Purchase Report </h1> </center>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34124650222205150805)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60380786679671749863)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31361233054465518255)
,p_name=>'P51_SALES_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(60380786679671749863)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>5
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30957570864417094046)
,p_name=>'refresh_region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_SALES_DATE'
,p_condition_element=>'P51_SALES_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34042702882073531412)
,p_event_id=>wwv_flow_api.id(30957570864417094046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33456297146074437346)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34042704629626531430)
,p_name=>'master_refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_SALES_DATE'
,p_condition_element=>'P51_SALES_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34042704737785531431)
,p_event_id=>wwv_flow_api.id(34042704629626531430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(34042703905025531423)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34042704821624531432)
,p_name=>'clear_parameter'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34124650882271150811)
,p_event_id=>wwv_flow_api.id(34042704821624531432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_SALES_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select purchase_date',
'from   purchase_master',
'order  by purchase_date desc',
'fetch  first 1 row only'))
,p_attribute_07=>'P51_SALES_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34807180317233750948)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34124650222205150805)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34807180406777750949)
,p_event_id=>wwv_flow_api.id(34807180317233750948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''https://apex.oracle.com/pls/apex/f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=daily_purchase_report'',''_blank'');'
);
wwv_flow_api.component_end;
end;
/
