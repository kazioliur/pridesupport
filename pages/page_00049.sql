prompt --application/pages/page_00049
begin
--   Manifest
--     PAGE: 00049
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
 p_id=>49
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Daily Sales Report'
,p_alias=>'DAILY-SALES-REPORT'
,p_step_title=>'Daily Sales Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210917222846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29019553957586231609)
,p_plug_name=>'Parameter Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_display_column=>5
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'</center> <h1> Daily Sales Report </h1> </center>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30307928459802958137)
,p_plug_name=>'Daily Sales Report1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352719760576582997)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   order_date,sum(total_price),sum(after_discount),',
'         sum(total_price) - sum(after_discount)  discount,',
'         sum(grant_total) - sum(after_discount)  vat,',
'         sum(grant_total) Gross_Received,sum(grant_total) Cash_to_account',
'FROM     order_master',
'where    order_date = :P49_SALES_DATE',
'group  by order_date;',
''))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_ajax_items_to_submit=>'P49_SALES_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(32074038465275844342)
,p_name=>'SUM(TOTAL_PRICE)'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Gross Sales'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(32074038559967844343)
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
 p_id=>wwv_flow_api.id(32074038623944844344)
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
 p_id=>wwv_flow_api.id(32074038777196844345)
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
 p_id=>wwv_flow_api.id(32074038897883844346)
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
 p_id=>wwv_flow_api.id(32238664012114132301)
,p_name=>'CASH_TO_ACCOUNT'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Cash to Account'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_format_mask=>'99,99,99,999.99'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32074035936236844317)
,p_name=>'Settlement'
,p_template=>wwv_flow_api.id(21352719760576582997)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Form--xlarge:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>6
,p_display_column=>5
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select payment_mode,sum(grant_total)',
'from   order_master',
'where  to_date(order_date,''DD-MON-RR'')= :P49_SALES_DATE',
'group  by payment_mode;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P49_SALES_DATE'
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
 p_id=>wwv_flow_api.id(33227642685654275109)
,p_query_column_id=>1
,p_column_alias=>'PAYMENT_MODE'
,p_column_display_sequence=>10
,p_column_heading=>'Payment Mode'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="display:block ; width:200px ;" > #PAYMENT_MODE# </span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33227642736919275110)
,p_query_column_id=>2
,p_column_alias=>'SUM(GRANT_TOTAL)'
,p_column_display_sequence=>20
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="display:block ; width:150px ;" > #SUM(GRANT_TOTAL)# </span>',
''))
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32074037278805844330)
,p_name=>'sales details'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--stretchInputs:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>8
,p_display_column=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   sum(quantity) quantity, Food_menu_name,F.price,sum(quantity) * f.price Unit_Total',
'from     order_master M, order_detail d,food_menu f',
'where    d.invoice = m.invoice',
'and      d.food_menu_id = f.food_menu_id',
'and      order_date = :P49_SALES_DATE',
'group by Food_menu_name,F.price;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P49_SALES_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33227642879017275111)
,p_query_column_id=>1
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>20
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="display:block ; width:120px ;" > #QUANTITY# </span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33227642964345275112)
,p_query_column_id=>2
,p_column_alias=>'FOOD_MENU_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Food Menu Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="display:block ; width:300px ;" > #FOOD_MENU_NAME# </span>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33227643044076275113)
,p_query_column_id=>3
,p_column_alias=>'PRICE'
,p_column_display_sequence=>30
,p_column_heading=>'Price'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:120px ;" > #PRICE# </span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33227643168993275114)
,p_query_column_id=>4
,p_column_alias=>'UNIT_TOTAL'
,p_column_display_sequence=>40
,p_column_heading=>'Unit Total'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:150px ;" > #UNIT_TOTAL# </span>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32074039177531844349)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<center><h3> Settelement</h3></center>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30957569571530094033)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(29019553957586231609)
,p_button_name=>'print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29019554063551231610)
,p_name=>'P49_SALES_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(29019553957586231609)
,p_prompt=>'Sales Date'
,p_format_mask=>'DD-MON-RR'
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
 p_id=>wwv_flow_api.id(29019555257300231622)
,p_name=>'region_refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_SALES_DATE'
,p_condition_element=>'P49_SALES_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29019555350462231623)
,p_event_id=>wwv_flow_api.id(29019555257300231622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(30307928459802958137)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32074036568955844323)
,p_event_id=>wwv_flow_api.id(29019555257300231622)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32074035936236844317)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32074037872296844336)
,p_event_id=>wwv_flow_api.id(29019555257300231622)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32074037278805844330)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29194877858918308605)
,p_name=>'clear_parameter'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29194877940958308606)
,p_event_id=>wwv_flow_api.id(29194877858918308605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P49_SALES_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30307929710080958150)
,p_event_id=>wwv_flow_api.id(29194877858918308605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(30307928459802958137)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32074036358124844321)
,p_event_id=>wwv_flow_api.id(29194877858918308605)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(30307928459802958137)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32074036480846844322)
,p_event_id=>wwv_flow_api.id(29194877858918308605)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32074035936236844317)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32074037704448844335)
,p_event_id=>wwv_flow_api.id(29194877858918308605)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32074037278805844330)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34807175858747750903)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30957569571530094033)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34807175974700750904)
,p_event_id=>wwv_flow_api.id(34807175858747750903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''https://apex.oracle.com/pls/apex/f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=Daily_sales_report'',''_blank'');'
);
wwv_flow_api.component_end;
end;
/
