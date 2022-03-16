prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Invoice_wise_purchase_report'
,p_alias=>'INVOICE-WISE-PURCHASE-REPORT'
,p_step_title=>'Invoice_wise_purchase_report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210919035020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33227646676873275149)
,p_plug_name=>'Parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<h1 style="color: #3333ff;"><center> Invoice-Wise Purchase Report <center> </h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33227646790571275150)
,p_name=>'Invoice-Wisa_purchase_detail'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_component_template_options=>'t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_column=>2
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select purchase_item_name from purchase_item where purchase_item_id= purchase_detail.purchase_item_id)Item_Name,',
'  Quantity,UNIT_PRICE,  (Quantity * UNIT_PRICE) Unit_total',
'from   purchase_detail',
'Where  invoice = :P69_INVOICE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P69_INVOICE'
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
 p_id=>wwv_flow_api.id(33456294946030437324)
,p_query_column_id=>1
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Item Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="display:block ; width:300px ;" > #ITEM_NAME# </span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33456292841189437303)
,p_query_column_id=>2
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>20
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="display:block ; width:100px ;" > #QUANTITY# </span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33456292966096437304)
,p_query_column_id=>3
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>30
,p_column_heading=>'Unit Price'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:120px ;" > #UNIT_PRICE# </span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33456293005734437305)
,p_query_column_id=>4
,p_column_alias=>'UNIT_TOTAL'
,p_column_display_sequence=>40
,p_column_heading=>'Unit Total'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:130px ;" > #UNIT_TOTAL# </span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33456293300279437308)
,p_plug_name=>'invoice_Wise_purchase_report_master'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TOTAL_AMOUNT,DISCOUNT,GRAND_TOTAL,PAYMENT_MODE,PAID_AMOUNT,DUE',
'from   purchase_master',
'Where  invoice = :P69_INVOICE'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_ajax_items_to_submit=>'P69_INVOICE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33456293696709437311)
,p_name=>'TOTAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Total Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33456293731986437312)
,p_name=>'DISCOUNT'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Discount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33456293882073437313)
,p_name=>'GRAND_TOTAL'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Grand Total'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33456293900029437314)
,p_name=>'PAYMENT_MODE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Payment Mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33456294052545437315)
,p_name=>'PAID_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Paid Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33456294104168437316)
,p_name=>'DUE'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Due'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33456294353941437318)
,p_plug_name=>'invocie_supplier_Id_date'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SUPPLIER_ID, (select supplier_name from supplier where supplier_id = purchase_master.supplier_id) supplier_name, PURCHASE_DATE',
'from   purchase_master',
'Where  invoice = :P69_INVOICE'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_ajax_items_to_submit=>'P69_INVOICE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33456294590232437320)
,p_name=>'SUPPLIER_ID'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Supplier ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33456294626544437321)
,p_name=>'SUPPLIER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Supplier Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33456294726234437322)
,p_name=>'PURCHASE_DATE'
,p_data_type=>'DATE'
,p_is_visible=>true
,p_heading=>'Purchase Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'Day, DD Month, YYYY'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33456295020981437325)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33227646676873275149)
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
 p_id=>wwv_flow_api.id(33456292620433437301)
,p_name=>'P69_INVOICE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33227646676873275149)
,p_prompt=>'Invoice'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select invoice',
'from   Purchase_master',
'order  by invoice desc;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(33456293132597437306)
,p_name=>'refreshi_detail'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_INVOICE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33456293250577437307)
,p_event_id=>wwv_flow_api.id(33456293132597437306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33227646790571275150)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33456294289446437317)
,p_event_id=>wwv_flow_api.id(33456293132597437306)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33456293300279437308)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33456294899465437323)
,p_event_id=>wwv_flow_api.id(33456293132597437306)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33456294353941437318)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34124650919828150812)
,p_name=>'parameter_value'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34124651010519150813)
,p_event_id=>wwv_flow_api.id(34124650919828150812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P69_INVOICE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select invoice',
'from  purchase_master',
'order by invoice desc',
'fetch first 1 rows only;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34807180171624750946)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(33456295020981437325)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34807180239061750947)
,p_event_id=>wwv_flow_api.id(34807180171624750946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''https://apex.oracle.com/pls/apex/f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=Invoice_wise_purchase_report'',''_blank'');'
);
wwv_flow_api.component_end;
end;
/
