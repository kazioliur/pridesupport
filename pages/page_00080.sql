prompt --application/pages/page_00080
begin
--   Manifest
--     PAGE: 00080
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
 p_id=>80
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Supplier_payment_report'
,p_alias=>'SUPPLIER-PAYMENT-REPORT1'
,p_step_title=>'Supplier_payment_report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210918204823'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(34939339541226797900)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>20
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--accent11:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>10
,p_display_column=>2
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supplier_name, PAYMENT_DATE,AMOUNT',
'from  supplier,purchase_payment',
'where purchase_payment.supplier_id = supplier.supplier_id',
'AND   PAYMENT_DATE between :P80_FROM_DATE and :P80_TO_DATE',
'order by supplier_name;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P80_FROM_DATE,P80_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34939339961595797900)
,p_query_column_id=>1
,p_column_alias=>'SUPPLIER_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Supplier Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34939340357127797902)
,p_query_column_id=>2
,p_column_alias=>'PAYMENT_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Payment Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34939340722263797902)
,p_query_column_id=>3
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>30
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66305458661566612932)
,p_plug_name=>'parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>' <h1 style="color: #3333ff;"><center> Period-Wise Supplier Payment Details <center> </h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34940295379068837724)
,p_name=>'P80_FROM_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66305458661566612932)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>3
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34940295782613837725)
,p_name=>'P80_TO_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66305458661566612932)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_api.id(34807178736711750932)
,p_name=>'refresh '
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_FROM_DATE,P80_TO_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34807178808846750933)
,p_event_id=>wwv_flow_api.id(34807178736711750932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(34939339541226797900)
);
wwv_flow_api.component_end;
end;
/
