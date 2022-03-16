prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'User Information'
,p_alias=>'USER-INFORMATION'
,p_step_title=>'User Information'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img{',
'width: 50px;',
'height: 50px;',
'}',
'',
'',
'.t-BreadcrumbRegion--useBreadcrumbTitle .t-Breadcrumb-item:last-child {',
'font-size: 2.5rem !important;',
'line-height: 4.3rem !important;}',
'',
'.t-BreadcrumbRegion-body,.t-BreadcrumbRegion-buttons {',
'padding-top:0px !important;',
'padding-bottom:0px !important;',
'padding-left:600px !important;}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210806213855'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24416989958140454861)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352719760576582997)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "USER_INFO_ID","EMPLOYEE_ID",',
'(select user_type_name from user_type where user_type_id = user_info.user_type_id)',
'"USER_TYPE_NAME",',
'(select user_status_name from user_status where user_status_id = user_info.user_status_id)"USER_STATUS_NAME","USERNAME","PASSWORD",',
'sys.dbms_lob.getlength("IMAGE")"IMAGE",',
'"ACTION_USER","ACTION_DATE" ',
'from "USER_INFO"'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24416990363535454861)
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
,p_detail_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP:P19_USER_INFO_ID:\#USER_INFO_ID#\'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-page.png" class="apex-edit-page" alt="">'
,p_owner=>'OLIURK2@GMAIL.COM'
,p_internal_uid=>24416990363535454861
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24416990423886454861)
,p_db_column_name=>'USER_INFO_ID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'User Info Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24416992592598454863)
,p_db_column_name=>'PASSWORD'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'Password'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24416992129652454863)
,p_db_column_name=>'USERNAME'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23903648482729998739)
,p_db_column_name=>'IMAGE'
,p_display_order=>30
,p_column_identifier=>'K'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'IMAGE:USER_INFO:IMAGE:USER_INFO_ID::::::::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24416990889647454862)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>60
,p_column_identifier=>'B'
,p_column_label=>'Employee ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24416993344139454863)
,p_db_column_name=>'ACTION_USER'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Entry By'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24416993760487454864)
,p_db_column_name=>'ACTION_DATE'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25760794105365455415)
,p_db_column_name=>'USER_TYPE_NAME'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'User Type Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25760794257271455416)
,p_db_column_name=>'USER_STATUS_NAME'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'User Status Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24417205014908460087)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'244172051'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:IMAGE:USER_TYPE_NAME:USER_STATUS_NAME:EMPLOYEE_ID:ACTION_USER:ACTION_DATE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24416999331121457962)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352731005589583001)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_06'
,p_menu_id=>wwv_flow_api.id(21352564009959582961)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(21352788184877583035)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24417200567326457963)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24416989958140454861)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19'
);
wwv_flow_api.component_end;
end;
/
