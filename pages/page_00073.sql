prompt --application/pages/page_00073
begin
--   Manifest
--     PAGE: 00073
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
 p_id=>73
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Purchasing _item_Information'
,p_alias=>'PURCHASING-ITEM-INFORMATION'
,p_step_title=>'Purchasing _item_Information'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210910082156'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32968625641088280696)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>10
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_column=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PURCHASE_ITEM_ID,',
'       PURCHASE_ITEM_NAME,',
'       UNIT_OF_QUANTITY,',
'       ACTION_USER,',
'       ACTION_DATE',
'  from PURCHASE_ITEM'))
,p_header=>' <h1 style="color: #3333ff;"><center> Purchasing Item Information <center> </h1>'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'<h1>Restaurant Management System</h1>',
'<h3>286/E, Mogbazar Dhaka -1217</h3>'))
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer=>'Developed By: Kazi Oliur Rahman'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'9'
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
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32546322242108076533)
,p_query_column_id=>1
,p_column_alias=>'PURCHASE_ITEM_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Purchase Item Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32968626020847280697)
,p_query_column_id=>2
,p_column_alias=>'PURCHASE_ITEM_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Purchase Item Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="display:block ; width:300px ;" > #PURCHASE_ITEM_NAME# </span>'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32968626449707280697)
,p_query_column_id=>3
,p_column_alias=>'UNIT_OF_QUANTITY'
,p_column_display_sequence=>30
,p_column_heading=>'Unit Of Quantity'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32968626826752280697)
,p_query_column_id=>4
,p_column_alias=>'ACTION_USER'
,p_column_display_sequence=>40
,p_column_heading=>'Entry By'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="display:block ; width:150px ;" > #ACTION_USER# </span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32968627278153280697)
,p_query_column_id=>5
,p_column_alias=>'ACTION_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Entry Date'
,p_use_as_row_header=>'N'
,p_column_format=>'Day, DD Month,YYYY HH: MI:SS'
,p_column_html_expression=>'<span style="display:block ; width:200px ;" > #ACTION_DATE# </span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32546322303741076534)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(32968625641088280696)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_redirect_url=>'https://apex.oracle.com/pls/apex/f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=Purchasing_item_information'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_api.component_end;
end;
/
