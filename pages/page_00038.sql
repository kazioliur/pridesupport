prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Order_master_detail'
,p_alias=>'ORDER-MASTER-DETAIL'
,p_step_title=>'Order_master_detail'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'',
'',
' function setFocus(PageItem) {',
'  if (event.keyCode == 13) {',
'  document.getElementById(PageItem).focus();',
'  }',
' }',
''))
,p_step_template=>wwv_flow_api.id(21352582910608582978)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210824234839'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26839975187547067832)
,p_plug_name=>'Last 7 Day Sales'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>40
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(27041410704018228106)
,p_region_id=>wwv_flow_api.id(26839975187547067832)
,p_chart_type=>'bar'
,p_title=>'Last 7 Days Sales'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(27041410894716228107)
,p_chart_id=>wwv_flow_api.id(27041410704018228106)
,p_seq=>10
,p_name=>'Total Sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(order_date,''Day'') , sum(grant_total)',
'from   order_master',
'where  order_date - sysdate <=8',
'group  by to_char(order_date,''Day'');',
''))
,p_items_value_column_name=>'SUM(GRANT_TOTAL)'
,p_items_label_column_name=>'TO_CHAR(ORDER_DATE,''DAY'')'
,p_color=>'#278c0d'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(27041411066310228109)
,p_chart_id=>wwv_flow_api.id(27041410704018228106)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Sales'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'normal'
,p_title_font_size=>'22'
,p_title_font_color=>'#000000'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'normal'
,p_tick_label_font_size=>'14'
,p_tick_label_font_color=>'#000000'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(27041410916173228108)
,p_chart_id=>wwv_flow_api.id(27041410704018228106)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Day'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'normal'
,p_title_font_size=>'22'
,p_title_font_color=>'#000000'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'normal'
,p_tick_label_font_size=>'14'
,p_tick_label_font_color=>'#000000'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26839975506649067836)
,p_name=>'Report'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>70
,p_region_template_options=>'t-Region--noPadding:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID SL#,(select food_menu_name from food_menu where food_menu_id=C001) MENU_NAME,C002 QUANTITY,C003 PRICE, C002*C003 UNIT_TOTAL',
'FROM   APEX_COLLECTIONS',
'WHERE  COLLECTION_NAME=''PURCHASE'''))
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
 p_id=>wwv_flow_api.id(26839975949458067840)
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
 p_id=>wwv_flow_api.id(28631399688803954524)
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
 p_id=>wwv_flow_api.id(26839976179941067842)
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
 p_id=>wwv_flow_api.id(26839976253871067843)
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
 p_id=>wwv_flow_api.id(28631399772875954525)
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
 p_id=>wwv_flow_api.id(27016982610097305977)
,p_plug_name=>'Order_master_detail'
,p_region_template_options=>'t-Region--noPadding:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'ORDER_MASTER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27041410533916228104)
,p_plug_name=>'Payment'
,p_region_template_options=>'t-Region--noPadding:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27041410695105228105)
,p_plug_name=>'today sales'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-left-none:margin-right-none'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>50
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(27041411991110228118)
,p_region_id=>wwv_flow_api.id(27041410695105228105)
,p_chart_type=>'bar'
,p_title=>'Today Sales'
,p_width=>'150'
,p_height=>'350'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(27041412051281228119)
,p_chart_id=>wwv_flow_api.id(27041411991110228118)
,p_seq=>10
,p_name=>'Today Sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(order_date,''Day''),sum(grant_total) ',
'from   order_master',
'where to_char(order_date,''dd-mm-rrrr'') = to_char(sysdate,''dd-mm-rrrr'')',
'group by to_char(order_date,''Day'');'))
,p_items_value_column_name=>'SUM(GRANT_TOTAL)'
,p_items_label_column_name=>'TO_CHAR(ORDER_DATE,''DAY'')'
,p_color=>'#278c0d'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(27041412249012228121)
,p_chart_id=>wwv_flow_api.id(27041411991110228118)
,p_axis=>'y'
,p_is_rendered=>'on'
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
 p_id=>wwv_flow_api.id(27041412174872228120)
,p_chart_id=>wwv_flow_api.id(27041411991110228118)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Day'
,p_title_font_family=>'Arial'
,p_title_font_style=>'normal'
,p_title_font_size=>'22'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28631399840503954526)
,p_name=>'Guest Point Earing Information'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>30
,p_region_template_options=>'t-Region--noPadding:t-Region--scrollBody:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select guest_name,sum(grant_total) "Total Consume",sum(grant_total)/100*5 "Total Point " ,round((sum(grant_total)/100*5)/2)"point value"',
'from   guest, order_master',
'where order_master.guest_id = guest.guest_id',
'and   guest.guest_id = :P38_GUEST_ID',
'group by guest_name;'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Guest Point Earing Information',
'<br'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P38_GUEST_ID'
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
 p_id=>wwv_flow_api.id(28632200228413954530)
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
 p_id=>wwv_flow_api.id(28632200376431954531)
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
 p_id=>wwv_flow_api.id(28632200422374954532)
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
 p_id=>wwv_flow_api.id(28632200537397954533)
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
 p_id=>wwv_flow_api.id(28632200696375954534)
,p_plug_name=>'New'
,p_region_template_options=>'t-Region--noPadding:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>80
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27016991758943306005)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P38_INVOICE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27016990532144306003)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(27041410533916228104)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27016992163675306006)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(27041410533916228104)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P38_INVOICE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27016991301960306005)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P38_INVOICE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(27016992453701306006)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26839975296224067833)
,p_name=>'P38_FOOD_MENU_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'Food Menu Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'FOOD_MENU_NAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select food_menu_name, food_menu_id',
'from   food_menu',
'order by food_menu_name;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'onkeypress = "setFocus(''P38_QUANTITY'')";'
,p_grid_label_column_span=>2
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26839975384841067834)
,p_name=>'P38_QUANTITY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeypress = "setFocus(''P38_FOOD_MENU_ID'')";'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26839975459847067835)
,p_name=>'P38_PRICE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'Price:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27016982963383305978)
,p_name=>'P38_INVOICE'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_item_source_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_source=>'INVOICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27016983388647305991)
,p_name=>'P38_GUEST_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_item_source_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'Guest ID'
,p_source=>'GUEST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select guest_id',
'from   guest',
'order  by guest_id;'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
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
 p_id=>wwv_flow_api.id(27016983652268305998)
,p_name=>'P38_ORDER_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_item_source_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_source=>'ORDER_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27016984058658305998)
,p_name=>'P38_TOTAL_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27041410533916228104)
,p_item_source_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'Total Price'
,p_source=>'TOTAL_PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(C002*C003)Display,sum(C002*C003)Value',
'FROM   APEX_COLLECTIONS',
'WHERE  COLLECTION_NAME=''PURCHASE'';'))
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27016984481575305999)
,p_name=>'P38_DISCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27041410533916228104)
,p_item_source_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'Discount %'
,p_source=>'DISCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27016984849380305999)
,p_name=>'P38_VAT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27041410533916228104)
,p_item_source_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'Vat %'
,p_source=>'VAT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27016985250385305999)
,p_name=>'P38_PAYMENT_MODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(27041410533916228104)
,p_item_source_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'Payment Mode'
,p_source=>'PAYMENT_MODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PAYMENT MODE'
,p_lov=>'.'||wwv_flow_api.id(26575720809821688038)||'.'
,p_cSize=>32
,p_cMaxlength=>50
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27016985668528305999)
,p_name=>'P38_GRANT_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(27041410533916228104)
,p_item_source_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'Paid Amount'
,p_source=>'GRANT_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27016986094148306000)
,p_name=>'P38_ACTION_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_item_source_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_source=>'ACTION_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27016986496494306000)
,p_name=>'P38_ACTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_item_source_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_source=>'ACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27016986826871306000)
,p_name=>'P38_AFTER_DISCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27041410533916228104)
,p_item_source_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'After Discount'
,p_source=>'AFTER_DISCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27297186337328593511)
,p_name=>'P38_GUEST_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27297187292221593520)
,p_name=>'P38_INVOICE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'Invoice:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27297187361243593521)
,p_name=>'P38_ORDER_DATE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'Date:'
,p_format_mask=>'DD Month, YYYY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27297187462975593522)
,p_name=>'P38_GUEST_NAME_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(27016982610097305977)
,p_prompt=>'Guest Name:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28026910962503190023)
,p_name=>'P38_DISPLAY_GRANT_TOTAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(27041410533916228104)
,p_prompt=>'Grant Total'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026910736535190021)
,p_validation_name=>'discount_not_over_100'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_total_amount           number := nvl(:P38_TOTAL_PRICE,0);',
'v_discount               number := :P38_DISCOUNT;',
'',
'begin',
'  if v_discount > 100  then ',
' return '' Discount should not  be over 100%'';',
' else',
'  return null;',
'end if;',
'',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_api.id(27016984481575305999)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026911261747190026)
,p_validation_name=>'grant_total_not_paid_amount'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_total_amount           number := :P38_DISPLAY_GRANT_TOTAL;',
'v_discount               number := :P38_GRANT_TOTAL;',
'',
'',
'begin',
'',
'if nvl(v_total_amount,0) <> nvl(v_discount,0) then ',
' return '' Paid Amount  shoul be equal Grant Total'';',
' else',
'  return null;',
'end if;',
'',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_api.id(28026910962503190023)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26839975637318067837)
,p_name=>'sent_value_apex_collection'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_QUANTITY'
,p_condition_element=>'P38_QUANTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26839975778830067838)
,p_event_id=>wwv_flow_api.id(26839975637318067837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' if not apex_collection.collection_exists(''PURCHASE'') then',
'        apex_collection.create_collection(''PURCHASE'');',
' end if;',
' ',
'apex_collection.add_member',
' (',
'   p_collection_name => ''PURCHASE'',',
'   p_c001 => :P38_FOOD_MENU_ID,',
'   p_c002 => :P38_QUANTITY,',
'   p_c003 => :P38_PRICE',
' );',
'',
'END;',
''))
,p_attribute_02=>'P38_FOOD_MENU_ID,P38_QUANTITY,P38_PRICE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26839975830989067839)
,p_event_id=>wwv_flow_api.id(26839975637318067837)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FOOD_MENU_ID,P38_QUANTITY,P38_PRICE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26839976401207067845)
,p_event_id=>wwv_flow_api.id(26839975637318067837)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(26839975506649067836)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26839976523619067846)
,p_event_id=>wwv_flow_api.id(26839975637318067837)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_TOTAL_PRICE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26839976748283067848)
,p_name=>'after_discount_value'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_DISCOUNT,P38_TOTAL_PRICE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26839976858998067849)
,p_event_id=>wwv_flow_api.id(26839976748283067848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_AFTER_DISCOUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return nvl(:P38_TOTAL_PRICE,0) - (nvl(:P38_TOTAL_PRICE,0) /100 * nvl(:P38_DISCOUNT,0));'
,p_attribute_07=>'P38_TOTAL_PRICE,P38_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26839976931308067850)
,p_name=>'Grant_total_value'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_TOTAL_PRICE,P38_DISCOUNT,P38_VAT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27041410241007228101)
,p_event_id=>wwv_flow_api.id(26839976931308067850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_GRANT_TOTAL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return ((nvl(:P38_TOTAL_PRICE,0) /100) * nvl(:P38_VAT,0)) + (nvl(:P38_TOTAL_PRICE,0) - ((nvl(:P38_TOTAL_PRICE,0) /100) * nvl(:P38_DISCOUNT,0)));'
,p_attribute_07=>'P38_TOTAL_PRICE,P38_DISCOUNT,P38_VAT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27297186666981593514)
,p_event_id=>wwv_flow_api.id(26839976931308067850)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_DISCOUNT,P38_VAT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27297185922540593507)
,p_name=>'auto_invoice_and_date'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_GUEST_ID'
,p_condition_element=>'P38_GUEST_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27297186056810593508)
,p_event_id=>wwv_flow_api.id(27297185922540593507)
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
'select nvl(max(to_number(invoice,''999'')),0) + 1',
'into   v_invoice',
'from   order_master;',
'',
'select guest_name ',
'into   v_guest_name',
'from   guest',
'where  guest_id=:P38_GUEST_ID;',
'',
':P38_ORDER_DATE := sysdate;',
':P38_INVOICE  := v_invoice;',
':P38_GUEST_NAME :=  v_guest_name;',
'',
':P38_VAT := v_vat;',
'',
'',
'end;'))
,p_attribute_02=>'P38_GUEST_ID'
,p_attribute_03=>'38_ORDER_DATE,P38_INVOICE,P38_GUEST_NAME,P38_VAT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28632200117266954529)
,p_event_id=>wwv_flow_api.id(27297185922540593507)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(28631399840503954526)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27297186126286593509)
,p_name=>'auto_menu_price'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_FOOD_MENU_ID'
,p_condition_element=>'P38_FOOD_MENU_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27297186282545593510)
,p_event_id=>wwv_flow_api.id(27297186126286593509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_pirce         order_detail.price%type;',
'begin',
'select  price',
'into    v_pirce',
'from   food_menu ',
'where  food_menu_id=:P38_FOOD_MENU_ID;',
'',
':P38_PRICE  := v_pirce;',
'',
'',
'end;'))
,p_attribute_02=>'P38_FOOD_MENU_ID'
,p_attribute_03=>'P38_PRICE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27297186482296593512)
,p_name=>'clear_guest_name'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27297186516312593513)
,p_event_id=>wwv_flow_api.id(27297186482296593512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_INVOICE,P38_TOTAL_PRICE,P38_INVOICE_1,P38_ORDER_DATE,P38_DISCOUNT,P38_AFTER_DISCOUNT,P38_ORDER_DATE_1,P38_GUEST_ID,P38_VAT,P38_PAYMENT_MODE,P38_GUEST_NAME,P38_FOOD_MENU_ID,P38_QUANTITY,P38_PRICE,P38_GUEST_NAME_1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27297186730368593515)
,p_name=>'auto_date_invoice_by_item_id'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_FOOD_MENU_ID'
,p_condition_element=>'P38_FOOD_MENU_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27297186801177593516)
,p_event_id=>wwv_flow_api.id(27297186730368593515)
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
'',
'select nvl(max(to_number(invoice,''999'')),0) + 1',
'into   v_invoice',
'from   order_master;',
'',
'',
':P38_ORDER_DATE := sysdate;',
':P38_INVOICE  := v_invoice;',
'',
'',
':P38_VAT := v_vat;',
'',
'',
'end;'))
,p_attribute_02=>'P38_FOOD_MENU_ID'
,p_attribute_03=>'P38_INVOICE,P38_ORDER_DATE,P38_VAT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P38_INVOICE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27297187521739593523)
,p_name=>'displaye_item'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_GUEST_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27297187642896593524)
,p_event_id=>wwv_flow_api.id(27297187521739593523)
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
'select nvl(max(to_number(invoice,''999'')),0) + 1',
'into   v_invoice',
'from   order_master;',
'',
'select guest_name ',
'into   v_guest_name',
'from   guest',
'where  guest_id=:P38_GUEST_ID;',
'',
':P38_ORDER_DATE_1 := sysdate;',
':P38_INVOICE_1  := v_invoice;',
':P38_GUEST_NAME_1 :=  v_guest_name;',
'',
':P38_VAT := v_vat;',
'',
'',
'end;'))
,p_attribute_02=>'P38_GUEST_ID'
,p_attribute_03=>'P38_INVOICE_1,P38_ORDER_DATE_1,P38_GUEST_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27297187749256593525)
,p_name=>'display_item_by_food_menu_id'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_FOOD_MENU_ID'
,p_condition_element=>'P38_FOOD_MENU_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27297187840244593526)
,p_event_id=>wwv_flow_api.id(27297187749256593525)
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
'select nvl(max(to_number(invoice,''999'')),0) + 1',
'into   v_invoice',
'from   order_master;',
'',
'',
'',
':P38_ORDER_DATE_1 := sysdate;',
':P38_INVOICE_1  := v_invoice;',
'',
':P38_VAT := v_vat;',
'',
'',
'end;'))
,p_attribute_02=>'P38_FOOD_MENU_ID'
,p_attribute_03=>'P38_INVOICE_1,P38_ORDER_DATE_1,P38_VAT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(28026911015602190024)
,p_name=>'grant_total_da'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_TOTAL_PRICE,P38_DISCOUNT,P38_VAT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28026911194455190025)
,p_event_id=>wwv_flow_api.id(28026911015602190024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_DISPLAY_GRANT_TOTAL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return ((nvl(:P38_TOTAL_PRICE,0) /100) * nvl(:P38_VAT,0)) + (nvl(:P38_TOTAL_PRICE,0) - ((nvl(:P38_TOTAL_PRICE,0) /100) * nvl(:P38_DISCOUNT,0)));'
,p_attribute_07=>'P38_TOTAL_PRICE,P38_DISCOUNT,P38_VAT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27016993330948306007)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(27016982610097305977)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Order_master_detail'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26839976687153067847)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'detail_data_pass'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' if not apex_collection.collection_exists(''PURCHASE'') then',
'        apex_collection.create_collection(''PURCHASE'');',
' end if;',
' ',
'   insert into ORDER_DETAIL(INVOICE,FOOD_MENU_ID,QUANTITY,PRICE,ACTION_USER,ACTION_DATE)',
'   select :P38_INVOICE,C001,C002,C003,v(''APP_USER''), SYSDATE',
'   FROM   APEX_COLLECTIONS',
'   WHERE  COLLECTION_NAME=''PURCHASE'';',
'     commit;',
' apex_collection.truncate_collection(p_collection_name => ''PURCHASE'');',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27016992163675306006)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27016992971026306006)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(27016982610097305977)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Order_master_detail'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27041410473849228103)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
':P38_ACTION_DATE := sysdate;',
'',
':P38_ACTION_USER := v(''APP_USER'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
