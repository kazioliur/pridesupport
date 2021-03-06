prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Date-Wise Purchase Report'
,p_alias=>'DATE-WISE-PURCHASE-REPORT'
,p_step_title=>'Date-Wise Purchase Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210915102526'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(30307927856722958131)
,p_name=>'Period-Wise Purchase  Report'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supplier_name, sum(grand_total) total_purchase,sum(discount) discount, sum(paid_amount) Purchase_paid,sum(due) total_due',
'               from   supplier,purchase_master',
'               where  purchase_master.supplier_id=supplier.supplier_id',
'               and   to_date(purchase_date,''DD-MON-RR'') between :P45_FROM_DATE and :P45_TO_DATE',
'               group  by supplier_name;',
'  '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P45_FROM_DATE,P45_TO_DATE'
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
 p_id=>wwv_flow_api.id(31365166991188775239)
,p_query_column_id=>1
,p_column_alias=>'SUPPLIER_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Supplier Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31365167074074775240)
,p_query_column_id=>2
,p_column_alias=>'TOTAL_PURCHASE'
,p_column_display_sequence=>20
,p_column_heading=>'Total Purchase'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31365167315878775243)
,p_query_column_id=>3
,p_column_alias=>'DISCOUNT'
,p_column_display_sequence=>50
,p_column_heading=>'Discount'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31365167186961775241)
,p_query_column_id=>4
,p_column_alias=>'PURCHASE_PAID'
,p_column_display_sequence=>30
,p_column_heading=>'Purchase Paid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31365167239257775242)
,p_query_column_id=>5
,p_column_alias=>'TOTAL_DUE'
,p_column_display_sequence=>40
,p_column_heading=>'Total Due'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30307927930609958132)
,p_plug_name=>'parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30307928090313958133)
,p_name=>'P45_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30307927930609958132)
,p_prompt=>'To Date'
,p_format_mask=>'DD-MON-RR'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(30307928193995958134)
,p_name=>'P45_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30307927930609958132)
,p_prompt=>'From Date'
,p_format_mask=>'DD-MON-RR'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(34124651295842150815)
,p_name=>'P45_NEW'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30307927930609958132)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(21352784253487583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30307928204090958135)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_TO_DATE,P45_FROM_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30307928352576958136)
,p_event_id=>wwv_flow_api.id(30307928204090958135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(30307927856722958131)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31365167459767775244)
,p_name=>'clear'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31365167554049775245)
,p_event_id=>wwv_flow_api.id(31365167459767775244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_FROM_DATE,P45_TO_DATE'
);
wwv_flow_api.component_end;
end;
/
