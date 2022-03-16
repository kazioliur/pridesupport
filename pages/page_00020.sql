prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Employee  Report'
,p_alias=>'EMPLOYEE-REPORT'
,p_step_title=>'Employee  Report'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'img {width :50px; height : 50px ;}'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210919203258'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25206639721182169449)
,p_plug_name=>'Employee Information Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352719760576582997)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "EMPLOYEE_ID",(select department_name from department where department_id = employee.department_id)"DEPARTMENT_NAME",',
'(select designation_name from designation where designation_id = employee.designation_id)"DESIGNATION_NAME",',
'"FIRST_NAME"|| '' ''||"LAST_NAME" Emp_Name,"CELL_NUMBER","EMAIL","ADDRESS",',
'"DATE_OF_BIRTH","RELIGION","GENDER","NATIONALITY","NID","JOIN_DATE",',
'"SALARY",sys.dbms_lob.getlength("IMAGE")"IMAGE","ACTION_USER","ACTION_DATE"',
'from "EMPLOYEE"'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employee Information Report'
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
 p_id=>wwv_flow_api.id(25206640102276169449)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP:P21_EMPLOYEE_ID:\#EMPLOYEE_ID#\'
,p_detail_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>',
'',
'',
'',
'',
'',
'',
''))
,p_owner=>'OLIURK2@GMAIL.COM'
,p_internal_uid=>25206640102276169449
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206640207871169449)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Emp ID'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25202823095424038702)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>30
,p_column_identifier=>'S'
,p_column_label=>'Emp Name'
,p_column_html_expression=>'<span style="display:block ; width:120px ;" > #EMP_NAME# </span>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206642210729169453)
,p_db_column_name=>'CELL_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cell Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206642613093169453)
,p_db_column_name=>'EMAIL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206643068049169454)
,p_db_column_name=>'ADDRESS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Address'
,p_column_html_expression=>'<span style="display:block ; width:300px ;" > #ADDRESS# </span>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206643481158169454)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date Of Birth'
,p_column_html_expression=>'<span style="display:block ; width:120px ;" > #DATE_OF_BIRTH# </span>'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD Month ,  YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206643891266169454)
,p_db_column_name=>'RELIGION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Religion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206644290767169455)
,p_db_column_name=>'GENDER'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206644625384169455)
,p_db_column_name=>'NATIONALITY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nationality'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206645062243169455)
,p_db_column_name=>'NID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'NID'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206645437367169455)
,p_db_column_name=>'JOIN_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Join Date'
,p_column_html_expression=>'<span style="display:block ; width:120px ;" > #DATE_OF_BIRTH# </span>'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD Month ,  YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206645865348169456)
,p_db_column_name=>'SALARY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'fm99,99,999.00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206646215438169456)
,p_db_column_name=>'IMAGE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Image'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_format_mask=>'IMAGE:EMPLOYEE:IMAGE:EMPLOYEE_ID::::::::'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206646624187169456)
,p_db_column_name=>'ACTION_USER'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Entry By '
,p_column_html_expression=>'<span style="display:block ; width:100px ;" > #ACTION_USER# </span>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25206647044489169457)
,p_db_column_name=>'ACTION_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Entry Date'
,p_column_html_expression=>'<span style="display:block ; width:120px ;" > #ACTION_DATE# </span>'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25760794403363455418)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Dept Name'
,p_column_html_expression=>'<span style="display:block ; width:100px ;" > #DEPARTMENT_NAME# </span>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25760794550412455419)
,p_db_column_name=>'DESIGNATION_NAME'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Desig Name'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'<span style="display:block ; width:100px ;" > #DESIGNATION_NAME# </span>'))
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25206664270618181454)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'252066643'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE_ID:EMP_NAME:IMAGE:SALARY:JOIN_DATE:DEPARTMENT_NAME:DESIGNATION_NAME:CELL_NUMBER:EMAIL:ADDRESS:DATE_OF_BIRTH:RELIGION:GENDER:NATIONALITY:NID:ACTION_USER:ACTION_DATE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25760794327506455417)
,p_plug_name=>'parameter'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle:t-Form--slimPadding:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(21352731005589583001)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<center><h1>Employee Information Report</h1></center>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34982715676480319738)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25760794327506455417)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25206651243912172577)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25206639721182169449)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New Employee'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34982715531610319737)
,p_name=>'P20_EMPLOYEE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25760794327506455417)
,p_prompt=>'Employee Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE_NAME_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select first_name||'' ''||last_name emp_name, employee_id',
'from   employee',
'order by emp_name;'))
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
 p_id=>wwv_flow_api.id(34982715711714319739)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34982715676480319738)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34982715896948319740)
,p_event_id=>wwv_flow_api.id(34982715711714319739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=Empoyee_form_report'',''_blank'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34982715931094319741)
,p_name=>'page_submit'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_EMPLOYEE_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34982716023172319742)
,p_event_id=>wwv_flow_api.id(34982715931094319741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.component_end;
end;
/
