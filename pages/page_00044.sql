prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'date-wise order details'
,p_alias=>'DATE-WISE-ORDER-DETAILS'
,p_step_title=>'date-wise order details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210917230929'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28834115119675499630)
,p_plug_name=>'Date-Wise Order Details Information'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>' <h1 style="color: #3333ff;"><center> Period-Wise Sales Report<center> </h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28858375465162141100)
,p_name=>'Period wise sales report'
,p_template=>wwv_flow_api.id(21352719760576582997)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_column=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   sum(quantity) quantity, Food_menu_name,F.price,sum(quantity) * f.price Unit_Total',
'from     order_master M, order_detail d,food_menu f',
'where    d.invoice = m.invoice',
'and      d.food_menu_id = f.food_menu_id',
'and      order_date between :P44_FROM_DATE and :P44_TO_DATE',
'group by Food_menu_name,F.price',
'order by  1 desc;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P44_FROM_DATE,P44_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_report_total_text_format=>'Total:'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33227643609289275119)
,p_query_column_id=>1
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>20
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<span style="display:block ; width:100px ;" > #QUANTITY# </span>'))
,p_column_alignment=>'CENTER'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33227643739528275120)
,p_query_column_id=>2
,p_column_alias=>'FOOD_MENU_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Food Menu Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<span style="display:block ; width:300px ;" > #FOOD_MENU_NAME# </span>'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33227643845058275121)
,p_query_column_id=>3
,p_column_alias=>'PRICE'
,p_column_display_sequence=>30
,p_column_heading=>'Price'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:150px ;" > #PRICE# </span>'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33227643939829275122)
,p_query_column_id=>4
,p_column_alias=>'UNIT_TOTAL'
,p_column_display_sequence=>40
,p_column_heading=>'Unit Total'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:150px ;" > #UNIT_TOTAL# </span>'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33227644003063275123)
,p_plug_name=>'Master_date'
,p_plug_template=>wwv_flow_api.id(21352719760576582997)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   sum(total_price),sum(after_discount),',
'         sum(total_price) - sum(after_discount)  discount,',
'         sum(grant_total) - sum(after_discount)  vat,',
'         sum(grant_total) Gross_Received,sum(grant_total) Cash_to_account',
'FROM     order_master',
'where order_date between :P44_FROM_DATE and :P44_TO_DATE;',
'',
'',
''))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_ajax_items_to_submit=>'P44_FROM_DATE,P44_TO_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33227645481305275137)
,p_name=>'SUM(TOTAL_PRICE)'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Gross Sales'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33227645560834275138)
,p_name=>'SUM(AFTER_DISCOUNT)'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Net Sales'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33227645666239275139)
,p_name=>'DISCOUNT'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Discount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33227645759104275140)
,p_name=>'VAT'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Vat'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33227645877795275141)
,p_name=>'GROSS_RECEIVED'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Gross Received'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(33227645931502275142)
,p_name=>'CASH_TO_ACCOUNT'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Cash To Account'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33227645093669275133)
,p_name=>'settlement'
,p_template=>wwv_flow_api.id(21352719760576582997)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>5
,p_display_column=>5
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select payment_mode,sum(grant_total)',
'from   order_master',
'where  order_date between :P44_FROM_DATE and :P44_TO_DATE',
'group  by payment_mode;'))
,p_header=>' <h3 style ="margin-left: 130px;"> Settlement</h3> '
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P44_FROM_DATE,P44_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_report_total_text_format=>'Total:'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33227646079365275143)
,p_query_column_id=>1
,p_column_alias=>'PAYMENT_MODE'
,p_column_display_sequence=>10
,p_column_heading=>'Payment Mode'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="display:block ; width:200px ;" > #PAYMENT_MODE#</span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33227646186514275144)
,p_query_column_id=>2
,p_column_alias=>'SUM(GRANT_TOTAL)'
,p_column_display_sequence=>20
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:150px ;" > #SUM(GRANT_TOTAL)#</span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33227646215473275145)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(28834115119675499630)
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
 p_id=>wwv_flow_api.id(28834115223344499631)
,p_name=>'P44_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28834115119675499630)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_grid_column=>2
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
 p_id=>wwv_flow_api.id(28834115338807499632)
,p_name=>'P44_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(28834115119675499630)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(28834115551932499633)
,p_name=>'refresh_report_region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_FROM_DATE,P44_TO_DATE'
,p_condition_element=>'P44_TO_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28834115631649499634)
,p_event_id=>wwv_flow_api.id(28834115551932499633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(28858375465162141100)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33227644940338275132)
,p_event_id=>wwv_flow_api.id(28834115551932499633)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33227644003063275123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33227646309531275146)
,p_event_id=>wwv_flow_api.id(28834115551932499633)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33227645093669275133)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(28834115747361499635)
,p_name=>'refresh_region'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28834115903429499637)
,p_event_id=>wwv_flow_api.id(28834115747361499635)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_FROM_DATE,P44_TO_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34807176069919750905)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(33227646215473275145)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34807176138413750906)
,p_event_id=>wwv_flow_api.id(34807176069919750905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'window.open(''https://apex.oracle.com/pls/apex/f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=period_Wise_sales_report'',''_blank'');'))
);
wwv_flow_api.component_end;
end;
/
