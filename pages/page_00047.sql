prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Bill Entry Form'
,p_alias=>'BILL-ENTRY-FORM'
,p_step_title=>'Bill Entry Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
' function setFocus(PageItem) {',
'  if (event.keyCode == 13) {',
'  document.getElementById(PageItem).focus();',
'  }',
' }',
''))
,p_page_template_options=>'#DEFAULT#:t-PageBody--noContentPadding'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211111144056'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28834116239275499640)
,p_plug_name=>'Bill Entry Form D'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--large:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_column=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28834117102162499649)
,p_name=>'Guest Point Information'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select guest_name,sum(grant_total) "Total Consume",sum(grant_total)/100*5 "Total Point " ,round((sum(grant_total)/100*5)/2)"point value"',
'from   guest, order_master',
'where order_master.guest_id = guest.guest_id',
'and   guest.guest_id = :P47_GUEST_ID',
'group by guest_name;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P47_GUEST_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29019555502453231625)
,p_query_column_id=>1
,p_column_alias=>'GUEST_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Guest Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29019555664040231626)
,p_query_column_id=>2
,p_column_alias=>'Total Consume'
,p_column_display_sequence=>20
,p_column_heading=>'Total Consume'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29019555755195231627)
,p_query_column_id=>3
,p_column_alias=>'Total Point '
,p_column_display_sequence=>30
,p_column_heading=>'Total Point '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29019555818028231628)
,p_query_column_id=>4
,p_column_alias=>'point value'
,p_column_display_sequence=>40
,p_column_heading=>'Point Value'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28894983860761266345)
,p_plug_name=>'Bill Entry Form M'
,p_region_template_options=>'t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_query_type=>'TABLE'
,p_query_table=>'ORDER_MASTER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<center><h2> Sales Entry Form </h2></center>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29019556155182231631)
,p_plug_name=>'last 7 days Sales'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-sm:margin-bottom-none:margin-left-none:margin-right-none'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(29019556220094231632)
,p_region_id=>wwv_flow_api.id(29019556155182231631)
,p_chart_type=>'bar'
,p_title=>'Last 7 Days Sales'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'on'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29019556344228231633)
,p_chart_id=>wwv_flow_api.id(29019556220094231632)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(order_date,''Day'') , sum(grant_total)',
'from   order_master',
'where  sysdate - order_date <=8',
'group  by to_char(order_date,''Day'');',
''))
,p_items_value_column_name=>'SUM(GRANT_TOTAL)'
,p_items_label_column_name=>'TO_CHAR(ORDER_DATE,''DAY'')'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(29019556561440231635)
,p_chart_id=>wwv_flow_api.id(29019556220094231632)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Sales'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'normal'
,p_title_font_size=>'14'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(29019556441945231634)
,p_chart_id=>wwv_flow_api.id(29019556220094231632)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Day'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'normal'
,p_title_font_size=>'14'
,p_title_font_color=>'#000000'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29019556611075231636)
,p_plug_name=>'Todays sales'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-sm:margin-bottom-none:margin-left-none:margin-right-none'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(29019556768919231637)
,p_region_id=>wwv_flow_api.id(29019556611075231636)
,p_chart_type=>'bar'
,p_title=>'Today Sales'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'on'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29019556800445231638)
,p_chart_id=>wwv_flow_api.id(29019556768919231637)
,p_seq=>10
,p_name=>'today_sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(order_date,''Day''),sum(grant_total) ',
'from   order_master',
'where to_char(order_date,''dd-mm-rrrr'') = to_char(sysdate,''dd-mm-rrrr'')',
'group by to_char(order_date,''Day'');'))
,p_items_value_column_name=>'SUM(GRANT_TOTAL)'
,p_items_label_column_name=>'TO_CHAR(ORDER_DATE,''DAY'')'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(29019556963418231639)
,p_chart_id=>wwv_flow_api.id(29019556768919231637)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Day'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'normal'
,p_title_font_size=>'14'
,p_title_font_color=>'#000000'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(29019557065821231640)
,p_chart_id=>wwv_flow_api.id(29019556768919231637)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Sales'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'normal'
,p_title_font_size=>'14'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(29019557187343231641)
,p_name=>'Apex Collection'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'t-Region--noPadding:i-h240:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID SL#,(select food_menu_name from food_menu where food_menu_id=C001) MENU_NAME,C002 QUANTITY,C003 PRICE, C002*C003 UNIT_TOTAL',
'FROM   APEX_COLLECTIONS',
'WHERE  COLLECTION_NAME=''SALES'''))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(29019557995463231649)
,p_query_column_id=>1
,p_column_alias=>'SL#'
,p_column_display_sequence=>10
,p_column_heading=>'Sl#'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29019558057754231650)
,p_query_column_id=>2
,p_column_alias=>'MENU_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Menu Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29194877400522308601)
,p_query_column_id=>3
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>30
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29194877501192308602)
,p_query_column_id=>4
,p_column_alias=>'PRICE'
,p_column_display_sequence=>40
,p_column_heading=>'Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29194877690509308603)
,p_query_column_id=>5
,p_column_alias=>'UNIT_TOTAL'
,p_column_display_sequence=>50
,p_column_heading=>'Unit Total'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34982716226928319744)
,p_plug_name=>'invoice-Wise_print_area'
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34982716405582319746)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(34982716226928319744)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Last Bill'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28894993030864266351)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P47_INVOICE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28894991834031266350)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28894993495001266351)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P47_INVOICE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28894992678194266351)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P47_INVOICE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(28894993701719266352)
,p_branch_name=>'Go To Page 47'
,p_branch_action=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:Y,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28834116750675499645)
,p_name=>'P47_FOOD_MENU_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_prompt=>'Menu Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select food_menu_name, food_menu_id',
'from   food_menu    ',
'order  by food_menu_name;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-left-none:margin-right-none'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28834116817761499646)
,p_name=>'P47_PRICE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_prompt=>'Price:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'margin-left-none:margin-right-none'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28834117094111499648)
,p_name=>'P47_QUANTITY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeypress = "setFocus(''P47_FOOD_MENU_ID'')";'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'margin-left-none:margin-right-none'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28834117283984499650)
,p_name=>'P47_GUEST_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_prompt=>'Guest Name:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28894984177051266345)
,p_name=>'P47_INVOICE'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_source=>'INVOICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28894984555015266346)
,p_name=>'P47_GUEST_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_prompt=>'Guest ID'
,p_source=>'GUEST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select guest_id',
'from   guest',
'order   by guest_id;'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28894984954384266346)
,p_name=>'P47_ORDER_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_source=>'ORDER_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28894985710890266347)
,p_name=>'P47_DISCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_prompt=>'Discount%'
,p_source=>'DISCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28894986133362266347)
,p_name=>'P47_VAT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_source=>'VAT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28894986558771266347)
,p_name=>'P47_PAYMENT_MODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_prompt=>'Payment Mode'
,p_source=>'PAYMENT_MODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT MODE'
,p_lov=>'.'||wwv_flow_api.id(26575720809821688038)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28894986934826266348)
,p_name=>'P47_GRANT_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_source=>'GRANT_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28894987386206266348)
,p_name=>'P47_ACTION_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_source=>'ACTION_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28894987763835266348)
,p_name=>'P47_ACTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_source=>'ACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28894988121088266348)
,p_name=>'P47_AFTER_DISCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_source=>'AFTER_DISCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29019557252706231642)
,p_name=>'P47_INVOICE_1'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_prompt=>'Invoice:   '
,p_source=>'INVOICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29019557337869231643)
,p_name=>'P47_ORDER_DATE_1'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_prompt=>'Date:'
,p_source=>'ORDER_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29269821540635494437)
,p_name=>'P47_TOTAL_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_item_source_plug_id=>wwv_flow_api.id(28894983860761266345)
,p_source=>'TOTAL_PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30307924888897958101)
,p_name=>'P47_DIS_TOTAL_PRICE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_prompt=>'Total Price:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30307924959974958102)
,p_name=>'P47_DIS_VAT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_prompt=>'Vat%:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30307925424232958107)
,p_name=>'P47_DIS_AFTER_DICOUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_prompt=>'After Discount:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30307925545926958108)
,p_name=>'P47_DIS_GRAND_TOTAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(28834116239275499640)
,p_prompt=>'Paid Amount:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(30957568740720094025)
,p_validation_name=>'discount_not_over_100'
,p_validation_sequence=>10
,p_validation=>':P47_DISCOUNT<100'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Discount Must be below 100%'
,p_associated_item=>wwv_flow_api.id(28894985710890266347)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29110141935825943020)
,p_name=>'sent_value_apex_collection'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_QUANTITY'
,p_condition_element=>'P47_QUANTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29110142306823943021)
,p_event_id=>wwv_flow_api.id(29110141935825943020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' if not apex_collection.collection_exists(''SALES'') then',
'        apex_collection.create_collection(''SALES'');',
' end if;',
' ',
'apex_collection.add_member',
' (',
'   p_collection_name => ''SALES'',',
'   p_c001 => :P47_FOOD_MENU_ID,',
'   p_c002 => :P47_QUANTITY,',
'   p_c003 => :P47_PRICE',
' );',
'',
'END;',
''))
,p_attribute_02=>'P47_FOOD_MENU_ID,P47_QUANTITY,P47_PRICE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29110142804956943022)
,p_event_id=>wwv_flow_api.id(29110141935825943020)
,p_event_result=>'TRUE'
,p_action_sequence=>21
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_FOOD_MENU_ID,P47_QUANTITY,P47_PRICE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29110143345497943022)
,p_event_id=>wwv_flow_api.id(29110141935825943020)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(29019557187343231641)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29269820305183494425)
,p_event_id=>wwv_flow_api.id(29110141935825943020)
,p_event_result=>'TRUE'
,p_action_sequence=>39
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_TOTAL_PRICE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(C002*C003)Display',
'FROM   APEX_COLLECTIONS',
'WHERE  COLLECTION_NAME=''SALES'';'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29110143868169943022)
,p_event_id=>wwv_flow_api.id(29110141935825943020)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_TOTAL_PRICE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29269821896164494440)
,p_name=>'auto_date_and_time_from_food_menu_name'
,p_event_sequence=>21
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_QUANTITY'
,p_condition_element=>'P47_QUANTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29269821937009494441)
,p_event_id=>wwv_flow_api.id(29269821896164494440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_invoice       order_master.invoice%type;',
'',
'v_vat           number :=15;',
'begin',
'select nvl(max(to_number(invoice,''99999999'')),1000) + 1',
'into   v_invoice',
'from   order_master;',
'',
'',
'',
'',
':P47_INVOICE := v_invoice;',
':P47_ORDER_DATE := sysdate;',
'',
':P47_VAT := v_vat;',
'',
'',
':P47_INVOICE_1 :=  v_invoice;',
':P47_ORDER_DATE_1 :=sysdate;',
'',
'',
':P47_ACTION_USER := V(''APP_USER'');',
':P47_ACTION_DATE := SYSDATE;',
'',
'end;'))
,p_attribute_03=>'P47_INVOICE,P47_ORDER_DATE,P47_VAT,P47_INVOICE_1,P47_ORDER_DATE_1,P47_ACTION_USER,P47_ACTION_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P47_INVOICE'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.4'
,p_default_workspace_id=>20952813001415487158
,p_default_application_id=>141546
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DDD451261366WORKSPACE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29310495565579629029)
,p_name=>'auto_invoice_and_date'
,p_event_sequence=>23
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_GUEST_ID'
,p_condition_element=>'P47_GUEST_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29310496472524629033)
,p_event_id=>wwv_flow_api.id(29310495565579629029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_invoice       order_master.invoice%type;',
'v_guest_name    guest.guest_name%type;',
'v_vat           number :=15;',
'begin',
'select nvl(max(to_number(to_char(invoice,''99999999''),''99999999'')),1000) + 1',
'into   v_invoice',
'from   order_master;',
'',
'select guest_name ',
'into   v_guest_name',
'from   guest',
'where  guest_id=:P47_GUEST_ID;',
'',
':P47_ORDER_DATE := sysdate;',
':P47_INVOICE := v_invoice;',
':P47_GUEST_NAME :=  v_guest_name;',
'',
':P47_VAT := v_vat;',
'',
'',
':P47_INVOICE_1 :=  v_invoice;',
':P47_ORDER_DATE_1 :=sysdate;',
'',
':P47_ACTION_USER := V(''APP_USER'');',
':P47_ACTION_DATE := SYSDATE;',
'',
'end;'))
,p_attribute_02=>'P47_GUEST_ID'
,p_attribute_03=>'P47_ORDER_DATE,P47_INVOICE,P47_GUEST_NAME,P47_VAT,P47_INVOICE_1,P47_ORDER_DATE_1,P47_ACTION_USER,P47_ACTION_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29019555977032231629)
,p_name=>'guest_poin_info'
,p_event_sequence=>25
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_GUEST_ID'
,p_condition_element=>'P47_GUEST_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29019556047824231630)
,p_event_id=>wwv_flow_api.id(29019555977032231629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(28834117102162499649)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29019557702595231647)
,p_name=>'food_meu_price_auto'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_FOOD_MENU_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29019557801438231648)
,p_event_id=>wwv_flow_api.id(29019557702595231647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_PRICE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select price',
'from   food_menu',
'where  food_menu_id=:P47_FOOD_MENU_ID;'))
,p_attribute_07=>'P47_FOOD_MENU_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29269819521180494417)
,p_name=>'clear_guest_name'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29269819625416494418)
,p_event_id=>wwv_flow_api.id(29269819521180494417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_GUEST_NAME,P47_QUANTITY'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29269820121968494423)
,p_name=>'after_discount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_TOTAL_PRICE,P47_DISCOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29269820243058494424)
,p_event_id=>wwv_flow_api.id(29269820121968494423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_AFTER_DISCOUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return :P47_TOTAL_PRICE - (nvl(((:P47_TOTAL_PRICE/100) * :P47_DISCOUNT),0));',
'',
'end;'))
,p_attribute_07=>'P47_TOTAL_PRICE,P47_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29269822009989494442)
,p_name=>'grant_total'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_TOTAL_PRICE,P47_DISCOUNT,P47_VAT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29269822144561494443)
,p_event_id=>wwv_flow_api.id(29269822009989494442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_GRANT_TOTAL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (:P47_TOTAL_PRICE - (( :P47_TOTAL_PRICE / 100) * nvl(:P47_DISCOUNT,0))) +((:P47_TOTAL_PRICE /100) * :P47_VAT)',
'from   dual;'))
,p_attribute_07=>'P47_TOTAL_PRICE,P47_VAT,P47_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29269822784398494449)
,p_name=>'dis_total_price'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_TOTAL_PRICE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29269822882397494450)
,p_event_id=>wwv_flow_api.id(29269822784398494449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_DIS_TOTAL_PRICE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P47_TOTAL_PRICE',
'from   dual;'))
,p_attribute_07=>'P47_TOTAL_PRICE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30307925091285958103)
,p_name=>'display_vat'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_VAT'
,p_condition_element=>'P47_VAT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30307925104414958104)
,p_event_id=>wwv_flow_api.id(30307925091285958103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_DIS_VAT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P47_VAT',
'from  dual;'))
,p_attribute_07=>'P47_VAT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30307925236004958105)
,p_name=>'dis_after_discount'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_AFTER_DISCOUNT'
,p_condition_element=>'P47_AFTER_DISCOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30307925367136958106)
,p_event_id=>wwv_flow_api.id(30307925236004958105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_DIS_AFTER_DICOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P47_AFTER_DISCOUNT',
'from   dual;'))
,p_attribute_07=>'P47_AFTER_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30307925610784958109)
,p_name=>'Dis_grand_total'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_GRANT_TOTAL'
,p_condition_element=>'P47_GRANT_TOTAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30307925709319958110)
,p_event_id=>wwv_flow_api.id(30307925610784958109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_DIS_GRAND_TOTAL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P47_GRANT_TOTAL',
'from  dual;'))
,p_attribute_07=>'P47_GRANT_TOTAL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28894994656016266352)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(28894983860761266345)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Bill Entry Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29269819819424494420)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'value_pass_order_detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' if not apex_collection.collection_exists(''SALES'') then',
'        apex_collection.create_collection(''SALES'');',
' end if;',
' ',
'   insert into ORDER_DETAIL(INVOICE,FOOD_MENU_ID,QUANTITY,PRICE,ACTION_USER,ACTION_DATE)',
'   select :P47_INVOICE,C001,C002,C003,v(''APP_USER''), SYSDATE',
'   FROM   APEX_COLLECTIONS',
'   WHERE  COLLECTION_NAME=''SALES'';',
'     commit;',
' apex_collection.truncate_collection(p_collection_name => ''SALES'');',
'',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28894994219604266352)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(28894983860761266345)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Bill Entry Form'
);
wwv_flow_api.component_end;
end;
/
