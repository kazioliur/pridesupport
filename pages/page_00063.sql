prompt --application/pages/page_00063
begin
--   Manifest
--     PAGE: 00063
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
 p_id=>63
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Top_ten_past_moving_food_menu'
,p_alias=>'TOP-TEN-PAST-MOVING-FOOD-MENU'
,p_step_title=>'Top_ten_past_moving_food_menu'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210908144613'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32238666914788132330)
,p_plug_name=>'heading'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<h1 style="color: #3333ff;"><center>   Top Ten Past Moving Food Menu  <center> </h1>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32487155122130755849)
,p_plug_name=>'Top_ten_past_moving_food_menu'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(32487155578242755849)
,p_region_id=>wwv_flow_api.id(32487155122130755849)
,p_chart_type=>'combo'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'N'
,p_legend_rendered=>'off'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(32487157295223755850)
,p_chart_id=>wwv_flow_api.id(32487155578242755849)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select food_menu_name,sum(quantity) quantity',
'from  order_view',
'group by food_menu_name',
'order by quantity desc',
'fetch first 10 rows only'))
,p_series_type=>'bar'
,p_items_value_column_name=>'QUANTITY'
,p_group_short_desc_column_name=>'FOOD_MENU_NAME'
,p_items_label_column_name=>'FOOD_MENU_NAME'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_gantt_start_date_source=>'DB_COLUMN'
,p_gantt_end_date_source=>'DB_COLUMN'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(32487156682140755850)
,p_chart_id=>wwv_flow_api.id(32487155578242755849)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Quantity'
,p_title_font_family=>'Impact'
,p_title_font_style=>'normal'
,p_title_font_size=>'16'
,p_title_font_color=>'#000000'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'normal'
,p_tick_label_font_size=>'12'
,p_tick_label_font_color=>'#000000'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(32487156092124755850)
,p_chart_id=>wwv_flow_api.id(32487155578242755849)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Food Menu Name'
,p_title_font_family=>'Impact'
,p_title_font_style=>'normal'
,p_title_font_color=>'#000000'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'normal'
,p_tick_label_font_size=>'12'
,p_tick_label_font_color=>'#000000'
);
wwv_flow_api.component_end;
end;
/
