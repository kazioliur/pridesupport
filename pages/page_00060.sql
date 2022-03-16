prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'guest_information_report'
,p_alias=>'GUEST-INFORMATION-REPORT'
,p_step_title=>'guest_information_report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210908060430'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32238665861877132319)
,p_plug_name=>'heading'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'',
'<h1 style="color: #3333ff;"><center>   Guest Information Report  <center> </h1>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32333807202282848351)
,p_plug_name=>'guest_information_report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352719760576582997)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'select "GUEST_ID","GUEST_NAME","CELL_NUMBER","EMAIL","ADDRESS",sys.dbms_lob.getlength("IMAGE")"IMAGE"from "GUEST"'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'guest_information_report'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(32333807310843848351)
,p_name=>'guest_information_report'
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
,p_internal_uid=>32333807310843848351
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32333807750466848352)
,p_db_column_name=>'GUEST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Guest ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32333808105225848353)
,p_db_column_name=>'GUEST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Guest Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32333808561614848353)
,p_db_column_name=>'CELL_NUMBER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cell Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32333808986471848353)
,p_db_column_name=>'EMAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Email'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32333809390168848353)
,p_db_column_name=>'ADDRESS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32238665779257132318)
,p_db_column_name=>'IMAGE'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:GUEST:IMAGE:GUEST_ID::::::::'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(32333383050489495518)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'323333831'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GUEST_ID:GUEST_NAME:CELL_NUMBER:EMAIL:ADDRESS'
);
wwv_flow_api.component_end;
end;
/
