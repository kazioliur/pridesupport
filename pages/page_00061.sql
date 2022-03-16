prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Guest_Point_Earning_ Information'
,p_alias=>'GUEST-POINT-EARNING-INFORMATION'
,p_step_title=>'Guest_Point_Earning_ Information'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210913190122'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32238665997978132320)
,p_plug_name=>'parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--large:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<h1 style="color: #3333ff;"><center>  Guest Point Earnig Information  <center> </h1>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32345188283933854473)
,p_plug_name=>'Guest_Point_Earning_ Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352719760576582997)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select order_master.guest_id,guest_name,cell_number,email,sum(grant_total) "Total Consume",',
'       sum(grant_total)/100*5 "Total Point " ,round((sum(grant_total)/100*5)/2)"point value"',
'from   guest, order_master',
'where order_master.guest_id = guest.guest_id',
'and   order_master.guest_id like nvl(:P61_GUEST_ID,''%'')',
'group by order_master.guest_id,guest_name,cell_number,email;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P61_GUEST_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Guest_Point_Earning_ Information'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(32345188344717854473)
,p_name=>'Guest_Point_Earning_ Information'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OLIURK2@GMAIL.COM'
,p_internal_uid=>32345188344717854473
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32238666759306132328)
,p_db_column_name=>'GUEST_ID'
,p_display_order=>10
,p_column_identifier=>'G'
,p_column_label=>'Guest ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32345188741036854475)
,p_db_column_name=>'GUEST_NAME'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32238666633297132327)
,p_db_column_name=>'CELL_NUMBER'
,p_display_order=>30
,p_column_identifier=>'F'
,p_column_label=>'Cell Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32238666337475132324)
,p_db_column_name=>'EMAIL'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Email'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32345189134542854476)
,p_db_column_name=>'Total Consume'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>'Total Consume'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99,99,99,999.99'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32345189510896854477)
,p_db_column_name=>'Total Point '
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Earning Point'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99,99,99,999.99'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32345189979708854477)
,p_db_column_name=>'point value'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Point Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99,99,99,999.99'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(32349812883270307102)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'323498129'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GUEST_ID:GUEST_NAME:CELL_NUMBER:EMAIL:Total Consume:Total Point :point value:'
,p_sum_columns_on_break=>'point value:Total Consume:Total Point '
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32238666874987132329)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(32238665997978132320)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_redirect_url=>'https://apex.oracle.com/pls/apex/f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=Guest_point_earning_information'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32238666089455132321)
,p_name=>'P61_GUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32238665997978132320)
,p_prompt=>'Guest ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct guest_id',
'from order_master'))
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
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32238666168978132322)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_GUEST_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32238666287097132323)
,p_event_id=>wwv_flow_api.id(32238666168978132322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32345188283933854473)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32238666414288132325)
,p_name=>'item_clear'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32238666540640132326)
,p_event_id=>wwv_flow_api.id(32238666414288132325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_GUEST_ID'
);
wwv_flow_api.component_end;
end;
/
