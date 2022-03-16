prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
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
 p_id=>71
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Supplier_wise_current_due'
,p_alias=>'SUPPLIER-WISE-CURRENT-DUE2'
,p_step_title=>'Supplier_wise_current_due'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210918205431'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32546319475347076505)
,p_plug_name=>'parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<h1 style="color: #3333ff;"><center> Supplier-Wise Purchase Summary  <center> </h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32546319562921076506)
,p_plug_name=>'Supplier-Wise Current Due'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352719760576582997)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PURCHASE_MASTER.INVOICE, ',
'PURCHASE_MASTER.SUPPLIER_ID, SUPPLIER_NAME,PURCHASE_MASTER.PURCHASE_DATE, PURCHASE_MASTER.TOTAL_AMOUNT, ',
' PURCHASE_MASTER.DISCOUNT, PURCHASE_MASTER.PAID_AMOUNT, ',
'PURCHASE_MASTER.DUE',
'FROM PURCHASE_MASTER,SUPPLIER',
'WHERE PURCHASE_MASTER.SUPPLIER_ID=SUPPLIER.SUPPLIER_ID(+)',
'AND   SUPPLIER.SUPPLIER_ID LIKE NVL(:P71_SUPPLIER_ID,''%'')',
'AND   PURCHASE_MASTER.PURCHASE_DATE BETWEEN :P71_FROM_DATE AND :P71_TO_DATE',
'ORDER BY INVOICE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P71_SUPPLIER_ID,P71_FROM_DATE,P71_TO_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Supplier-Wise Current Due'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(32546320234802076513)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OLIURK2@GMAIL.COM'
,p_internal_uid=>32546320234802076513
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32546320395300076514)
,p_db_column_name=>'INVOICE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Invoice'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32546320449894076515)
,p_db_column_name=>'SUPPLIER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Supplier ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32546320520468076516)
,p_db_column_name=>'SUPPLIER_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Supplier Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32546320645931076517)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Purchase Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32546320783134076518)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Total Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99,99,99,999.99'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32546320833914076519)
,p_db_column_name=>'DISCOUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Discount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99,99,99,999.99'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32546320984556076520)
,p_db_column_name=>'PAID_AMOUNT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Paid Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99,99,99,999.99'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32546321059818076521)
,p_db_column_name=>'DUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Due'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99,99,99,999.99'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(32943568454371467814)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'329435685'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>':INVOICE:SUPPLIER_ID:SUPPLIER_NAME:PURCHASE_DATE:TOTAL_AMOUNT:DISCOUNT:PAID_AMOUNT:DUE'
,p_break_on=>'SUPPLIER_NAME:SUPPLIER_ID:0:0:0:0'
,p_break_enabled_on=>'SUPPLIER_NAME:SUPPLIER_ID:0:0:0:0'
,p_sum_columns_on_break=>'TOTAL_AMOUNT:DISCOUNT:PAID_AMOUNT:DUE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34807179861949750943)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(32546319475347076505)
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
 p_id=>wwv_flow_api.id(32546319657713076507)
,p_name=>'P71_SUPPLIER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32546319475347076505)
,p_prompt=>'Supplier ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SUPPLIER_NAME_AND_ID'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct supplier_name, purchase_master.supplier_id',
'from   purchase_master, supplier ',
'where  purchase_master.supplier_id = supplier.supplier_id',
'order by   purchase_master.supplier_id desc;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32546319733136076508)
,p_name=>'P71_FROM_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(32546319475347076505)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_api.id(32546319803135076509)
,p_name=>'P71_TO_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(32546319475347076505)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_api.id(32546320089731076511)
,p_name=>'refresh_curen_due_regioin'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_SUPPLIER_ID,P71_FROM_DATE,P71_TO_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32546320145353076512)
,p_event_id=>wwv_flow_api.id(32546320089731076511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32546319562921076506)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34124652199079150824)
,p_name=>'clear parameter'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34124652207786150825)
,p_event_id=>wwv_flow_api.id(34124652199079150824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_SUPPLIER_ID,P71_FROM_DATE,P71_TO_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34807179997146750944)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34807179861949750943)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34807180049116750945)
,p_event_id=>wwv_flow_api.id(34807179997146750944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=supplier_wise_purchase_summary2'',''_blank'');'
);
wwv_flow_api.component_end;
end;
/
