prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Food Menu Report'
,p_alias=>'FOOD-MENU-REPORT1'
,p_step_title=>'Food Menu Report'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-BreadcrumbRegion--useBreadcrumbTitle .t-Breadcrumb-item:last-child {',
'font-size: 2.5rem !important;',
'line-height: 4.3rem !important;}',
'',
'.t-BreadcrumbRegion-body,.t-BreadcrumbRegion-buttons {',
'padding-top:0px !important;',
'padding-bottom:0px !important;',
'padding-left:590px !important;}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210814173625'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25877130050751811382)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352719760576582997)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FOOD_MENU'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25877130499521811383)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP:P36_FOOD_MENU_ID:\#FOOD_MENU_ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'OLIURK2@GMAIL.COM'
,p_internal_uid=>25877130499521811383
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25877130578925811384)
,p_db_column_name=>'FOOD_MENU_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Food Menu Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25877130965972811384)
,p_db_column_name=>'FOOD_MENU_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Food Menu Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25877131370585811385)
,p_db_column_name=>'PRICE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Price'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99,99,999.99'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25877131782052811385)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25877132170077811385)
,p_db_column_name=>'ACTION_USER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Entry By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25877132539447811385)
,p_db_column_name=>'ACTION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25877358468376833276)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'258773585'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FOOD_MENU_ID:FOOD_MENU_NAME:PRICE:DESCRIPTION:ACTION_USER:ACTION_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25877142195053814413)
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
 p_id=>wwv_flow_api.id(25877143411106814415)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25877130050751811382)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New Food Menu'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:36'
);
wwv_flow_api.component_end;
end;
/
