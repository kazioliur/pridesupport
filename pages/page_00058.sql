prompt --application/pages/page_00058
begin
--   Manifest
--     PAGE: 00058
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
 p_id=>58
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Monthly_sales_report'
,p_alias=>'MONTHLY-SALES-REPORT'
,p_step_title=>'Monthly_sales_report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210919160707'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32238664127654132302)
,p_plug_name=>'Parameter'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<h1 style="color: #3333ff;"><center> Period-Wise Sales Summary <center> </h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32238664321620132304)
,p_name=>'Details'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   invoice, Order_date,(total_price) Gross_Sales,',
'         (total_price) - (after_discount)  discount, (after_discount)Net_Sales ,',
'         (grant_total) - (after_discount)  vat,',
'         (grant_total) Paid_amount',
'FROM     order_master',
'where order_date between :P58_FROM_DATE and :P58_TO_DATE;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P58_FROM_DATE,P58_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total:'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34982713042522319712)
,p_query_column_id=>1
,p_column_alias=>'INVOICE'
,p_column_display_sequence=>10
,p_column_heading=>'Invoice'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34982713199913319713)
,p_query_column_id=>2
,p_column_alias=>'ORDER_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34982712493733319706)
,p_query_column_id=>3
,p_column_alias=>'GROSS_SALES'
,p_column_display_sequence=>30
,p_column_heading=>'Gross Sales'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34982712598585319707)
,p_query_column_id=>4
,p_column_alias=>'DISCOUNT'
,p_column_display_sequence=>40
,p_column_heading=>'Discount'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34982712673111319708)
,p_query_column_id=>5
,p_column_alias=>'NET_SALES'
,p_column_display_sequence=>50
,p_column_heading=>'Net Sales'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34982712743324319709)
,p_query_column_id=>6
,p_column_alias=>'VAT'
,p_column_display_sequence=>60
,p_column_heading=>'Vat'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34982713220444319714)
,p_query_column_id=>7
,p_column_alias=>'PAID_AMOUNT'
,p_column_display_sequence=>70
,p_column_heading=>'Paid Amount'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34982713346715319715)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(32238664127654132302)
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
 p_id=>wwv_flow_api.id(32238664217599132303)
,p_name=>'P58_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32238664127654132302)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34982712349144319705)
,p_name=>'P58_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32238664127654132302)
,p_prompt=>'Sales Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32238664817541132309)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_FROM_DATE,P58_TO_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32238664981774132310)
,p_event_id=>wwv_flow_api.id(32238664817541132309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32238664321620132304)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32238665438500132315)
,p_name=>'Clear_item'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32238665505694132316)
,p_event_id=>wwv_flow_api.id(32238665438500132315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_FROM_DATE,P58_TO_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34982713404612319716)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34982713346715319715)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34982713573013319717)
,p_event_id=>wwv_flow_api.id(34982713404612319716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=period_wise_sales_summary'', ''_blank'');'
);
wwv_flow_api.component_end;
end;
/
