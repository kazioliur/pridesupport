prompt --application/pages/page_00054
begin
--   Manifest
--     PAGE: 00054
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
 p_id=>54
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Montly_food_menu_sales'
,p_alias=>'MONTLY-FOOD-MENU-SALES'
,p_step_title=>'Montly_food_menu_sales'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210918050725'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31798084335012172337)
,p_plug_name=>'Monthly Food Menu Movement'
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352719760576582997)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select food_menu_name,quantity,to_char(order_date,''Month YYYY'') Month',
'from   food_menu left join order_detail',
'on     (order_detail.food_menu_id=food_menu.food_menu_id)',
'join   order_master',
'on     (order_detail.invoice=order_master.invoice)',
'order by to_date(to_char(order_date,''Month''),''MM'') asc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Monthly Food Menu Movement'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer=>'Developed By: Kazi Oliur Rahman'
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
 p_id=>wwv_flow_api.id(31798084409880172338)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'PDF'
,p_enable_mail_download=>'N'
,p_owner=>'OLIURK2@GMAIL.COM'
,p_internal_uid=>31798084409880172338
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31798084545144172339)
,p_db_column_name=>'FOOD_MENU_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Food Menu Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31798084646455172340)
,p_db_column_name=>'QUANTITY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31798084798135172341)
,p_db_column_name=>'MONTH'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Month'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(32046416484871698155)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'320464165'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'FOOD_MENU_NAME:QUANTITY:MONTH'
);
wwv_flow_api.create_worksheet_pivot(
 p_id=>wwv_flow_api.id(34846038667170618867)
,p_report_id=>wwv_flow_api.id(32046416484871698155)
,p_pivot_columns=>'MONTH'
,p_row_columns=>'FOOD_MENU_NAME'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(34846039006435618867)
,p_pivot_id=>wwv_flow_api.id(34846038667170618867)
,p_display_seq=>1
,p_function_name=>'COUNT'
,p_column_name=>'QUANTITY'
,p_db_column_name=>'PFC1'
,p_column_label=>'  '
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34807176259997750907)
,p_plug_name=>'New'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<h1 style="color: #3333ff;"><center> Monthly Food Menu Sales<center> </h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
