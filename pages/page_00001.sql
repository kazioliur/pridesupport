prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'ddd45_restaurant'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(21352582910608582978)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220228180610'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21199266168094770347)
,p_plug_name=>'today purchase'
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(21352593822443582985)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(25095651862844894306)
,p_region_id=>wwv_flow_api.id(21199266168094770347)
,p_chart_type=>'bar'
,p_title=>'Today  Total Purchase'
,p_height=>'150'
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
,p_tooltip_rendered=>'N'
,p_legend_rendered=>'off'
,p_no_data_found_message=>'No Purchase Yet'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(25095651926092894307)
,p_chart_id=>wwv_flow_api.id(25095651862844894306)
,p_seq=>10
,p_name=>'Total Purchase'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select sum(grand_total) Total_purchase',
'from   purchase_master',
'',
'',
'',
'/*',
'',
'select sum(grand_total) Total_purchase,to_char(purchase_date,''DD-MON-RR'') Today_purchase',
'from   purchase_master',
'where  to_char(purchase_date,''DD-MON-RR'') = to_char(sysdate,''DD-MON-RR'')',
'group by to_char(purchase_date,''DD-MON-RR'');',
'',
'*/'))
,p_items_value_column_name=>'TOTAL_PURCHASE'
,p_items_label_column_name=>'TOTAL_PURCHASE'
,p_color=>'#9add14'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(25095652112831894309)
,p_chart_id=>wwv_flow_api.id(25095651862844894306)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Purchase'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'normal'
,p_title_font_size=>'12'
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
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(25095652053631894308)
,p_chart_id=>wwv_flow_api.id(25095651862844894306)
,p_axis=>'x'
,p_is_rendered=>'off'
,p_title=>'Date'
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
 p_id=>wwv_flow_api.id(21199266222851770348)
,p_plug_name=>'video'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352593822443582985)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_source=>'<img src="#APP_IMAGES#mutton_kachi.jpg" width="100%" height="300px">'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23903644915905998704)
,p_plug_name=>'Breadcrumbpage '
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(21352731005589583001)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_06'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_date              varchar2(50);',
'v_emp_birthdate     varchar2(100);',
'begin',
'select to_char(sysdate,''fmDay, DD Month,  YYYY HH:MI:SSPM'')',
'into  v_date',
'from dual;',
'htp.p(''<center><h2><b> Wecome to Restaurant Management System </b></h2></center>'');',
'',
'htp.p(''<center><tr> <td> <b>''||v_date||''<b> <td><tr></center>'');',
'',
'--htp.p(''<marquee> <h5  style = "text-color:green;">Happy Birth Day<br> &nbsp &nbsp &nbsp &nbsp  Dear </h5></marquee> <br>'');',
'',
'for oliur in (select first_name||'' ''||last_name Emp_Name',
'from   employee',
'where  to_char(date_of_birth, ''DD-MON'')= to_char(sysdate,''DD-MON''))',
'',
'loop',
'htp.p(''<b><tr> <td>  <marquee> <h5  style = "text-color:green;">Happy Birth Day<br> &nbsp &nbsp &nbsp &nbsp  Dear </h5>''||oliur.emp_name||''</marquee>  </td></tr></b>'');',
'end loop;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25095651333039894301)
,p_plug_name=>'today sales'
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(21352593822443582985)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>2
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(25095651468588894302)
,p_region_id=>wwv_flow_api.id(25095651333039894301)
,p_chart_type=>'bar'
,p_title=>'Today Sales'
,p_height=>'150'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'on'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'N'
,p_legend_rendered=>'off'
,p_no_data_found_message=>'No Sales Yet '
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(25095651559113894303)
,p_chart_id=>wwv_flow_api.id(25095651468588894302)
,p_seq=>10
,p_name=>'today_sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(total_price) Total_sales',
'from   order_master',
''))
,p_items_value_column_name=>'TOTAL_SALES'
,p_items_label_column_name=>'TOTAL_SALES'
,p_color=>'#14dd35'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(25095651731670894305)
,p_chart_id=>wwv_flow_api.id(25095651468588894302)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Sales'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'normal'
,p_title_font_size=>'12'
,p_title_font_color=>'#000000'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(25095653329461894321)
,p_chart_id=>wwv_flow_api.id(25095651468588894302)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(25095651604336894304)
,p_chart_id=>wwv_flow_api.id(25095651468588894302)
,p_axis=>'x'
,p_is_rendered=>'off'
,p_title=>'Date'
,p_title_font_family=>'Arial'
,p_title_font_style=>'italic'
,p_title_font_size=>'10'
,p_title_font_color=>'#070b08'
,p_format_type=>'currency'
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
 p_id=>wwv_flow_api.id(25095652291229894310)
,p_plug_name=>'Today Expense'
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(21352593822443582985)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(25095652360171894311)
,p_region_id=>wwv_flow_api.id(25095652291229894310)
,p_chart_type=>'bar'
,p_title=>'Today Expense'
,p_height=>'150'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'on'
,p_stack_font_color=>'#000000'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'N'
,p_legend_rendered=>'off'
,p_no_data_found_message=>'No expense yet for today'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(25095652489262894312)
,p_chart_id=>wwv_flow_api.id(25095652360171894311)
,p_seq=>10
,p_name=>'total Expense'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(expense_amount) Total_expense',
'from   expense_m,expense_d',
'',
'',
'',
'/*',
'',
'select sum(expense_amount) Total_expense,to_char(expense_date,''DD-MON-RR'') Today_expense',
'from   expense_m,expense_d',
'where expense_d.expense_m_id=expense_m.expense_m_id',
'and  to_char(expense_date,''DD-MON-RR'') = to_char(sysdate,''DD-MON-RR'')',
'group by to_char(expense_date,''DD-MON-RR'');',
'',
'*/'))
,p_items_value_column_name=>'TOTAL_EXPENSE'
,p_items_label_column_name=>'TOTAL_EXPENSE'
,p_items_short_desc_column_name=>'TOTAL_EXPENSE'
,p_color=>'#cb281d'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(30307926594049958118)
,p_chart_id=>wwv_flow_api.id(25095652360171894311)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Expense'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'normal'
,p_title_font_size=>'12'
,p_title_font_color=>'#000000'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(30307926412401958117)
,p_chart_id=>wwv_flow_api.id(25095652360171894311)
,p_axis=>'x'
,p_is_rendered=>'off'
,p_title=>'Date'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'off'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25095652724463894315)
,p_plug_name=>'carousel container'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-cycle5s:t-Region--carouselSlide:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(21352594858318582985)
,p_plug_display_sequence=>90
,p_plug_grid_column_span=>5
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25095654750695894335)
,p_plug_name=>'pizza'
,p_parent_plug_id=>wwv_flow_api.id(25095652724463894315)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352593822443582985)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<img src="#APP_IMAGES#pizza.jpg" width="420" height="300">'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25095654839284894336)
,p_plug_name=>'mutton'
,p_parent_plug_id=>wwv_flow_api.id(25095652724463894315)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352593822443582985)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<img src="#APP_IMAGES#mutton_kachi.jpg" width="420" height="300">'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25095655262879894340)
,p_plug_name=>'kachi'
,p_parent_plug_id=>wwv_flow_api.id(25095652724463894315)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352593822443582985)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<img src="#APP_IMAGES#beef_kachi.jpg" width="420" height="300">'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25095652843012894316)
,p_plug_name=>'Total Due Paid'
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(21352593822443582985)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(25095652935569894317)
,p_region_id=>wwv_flow_api.id(25095652843012894316)
,p_chart_type=>'bar'
,p_title=>'Today Due Paid'
,p_height=>'150'
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
,p_tooltip_rendered=>'N'
,p_legend_rendered=>'off'
,p_no_data_found_message=>'No Due paid yet '
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(25095653006412894318)
,p_chart_id=>wwv_flow_api.id(25095652935569894317)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   sum(amount) Due_paid',
'from     PURCHASE_PAYMENT',
'',
'',
'',
'/*',
'select   sum(amount) Due_paid, to_char(PAYMENT_DATE,''DD-MON-RR'') Paid_date',
'from     PURCHASE_PAYMENT',
'where    to_char(PAYMENT_DATE,''DD-MON-RR'') = to_char(sysdate,''DD-MON-RR'')',
'group by to_char(PAYMENT_DATE,''DD-MON-RR'');',
'',
'*/'))
,p_items_value_column_name=>'DUE_PAID'
,p_items_label_column_name=>'DUE_PAID'
,p_color=>'#9add14'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(30307926726421958120)
,p_chart_id=>wwv_flow_api.id(25095652935569894317)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Paid Amount'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'normal'
,p_title_font_size=>'12'
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
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(30307926658102958119)
,p_chart_id=>wwv_flow_api.id(25095652935569894317)
,p_axis=>'x'
,p_is_rendered=>'off'
,p_title=>'Date'
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
 p_id=>wwv_flow_api.id(25095653603507894324)
,p_plug_name=>'enlisted guest'
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(21352593822443582985)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(25095653715012894325)
,p_region_id=>wwv_flow_api.id(25095653603507894324)
,p_chart_type=>'bar'
,p_title=>'Today Membership Received '
,p_height=>'150'
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
,p_no_data_found_message=>'NO guest enlisted for today'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(25095653817773894326)
,p_chart_id=>wwv_flow_api.id(25095653715012894325)
,p_seq=>10
,p_name=>'number of guest'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(guest_id) Membership_sales',
'from    guest',
'',
'',
'',
'/*',
'select count(guest_id), to_char(action_date,''DD-MON-RR'') guest_entry_date',
'from    guest',
'where  to_char(action_date,''DD-MON-RR'') = to_char(sysdate,''DD-MON-RR'')',
'group by to_char(action_date,''DD-MON-RR'');',
'',
'*/',
'',
'',
'',
''))
,p_items_value_column_name=>'MEMBERSHIP_SALES'
,p_items_label_column_name=>'MEMBERSHIP_SALES'
,p_color=>'#14dd35'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(30307926863173958121)
,p_chart_id=>wwv_flow_api.id(25095653715012894325)
,p_axis=>'x'
,p_is_rendered=>'off'
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
 p_id=>wwv_flow_api.id(30307926983878958122)
,p_chart_id=>wwv_flow_api.id(25095653715012894325)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Number of Guest'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'normal'
,p_title_font_size=>'12'
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
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25095653918229894327)
,p_plug_name=>'Total Purchase Paid'
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(21352593822443582985)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(25095654028735894328)
,p_region_id=>wwv_flow_api.id(25095653918229894327)
,p_chart_type=>'bar'
,p_title=>'Today paid for purchase'
,p_height=>'150'
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
 p_id=>wwv_flow_api.id(25095654142007894329)
,p_chart_id=>wwv_flow_api.id(25095654028735894328)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(PAID_AMOUNT) Paid',
'from   purchase_master',
'',
'',
'',
'/*',
'select sum(PAID_AMOUNT) Paid,to_char(purchase_date,''DD-MON-RR'') Today_purchase',
'from   purchase_master',
'where  to_char(purchase_date,''DD-MON-RR'') = to_char(sysdate,''DD-MON-RR'')',
'group by to_char(purchase_date,''DD-MON-RR'');',
'',
'*/'))
,p_items_value_column_name=>'PAID'
,p_items_label_column_name=>'PAID'
,p_color=>'#9add14'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(30307927009624958123)
,p_chart_id=>wwv_flow_api.id(25095654028735894328)
,p_axis=>'x'
,p_is_rendered=>'off'
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
 p_id=>wwv_flow_api.id(30307927176536958124)
,p_chart_id=>wwv_flow_api.id(25095654028735894328)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Purchase Paid Amount'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'normal'
,p_title_font_size=>'12'
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
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25095655790786894345)
,p_plug_name=>'about us'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352593822443582985)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<doctype html>',
'<html>',
'<head>',
' <title> day-1</title>',
' ',
' <style>',
' .h1_cus_coment{',
'               text-shadow:2px 2px #ff0000;',
'              }',
'  p{',
'  font-size:10px ',
'  }',
' ',
' .developer_info{',
'				 float:left;',
'				 background-color:white;',
'				 margin: 0 0 0 0;',
'                ',
'                 width: 200px;',
'                 height:200px;',
'                  float:left;',
'                }',
'',
' </style>',
'</head>',
'<body>',
'<div>',
'<marquee style="color:red; font-size:40px;"> About Us </marquee>',
'</div>',
'',
'<div class="developer_info">',
'<center><img src=',
' "#APP_IMAGES#oli.jpg"',
'class ="center"',
'width="160x" height="160" ></center>',
'<p style="margin:10 0 0 0px">',
'&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp    &nbsp &nbsp &nbsp   Pevelop by <br>',
'&nbsp &nbsp    &nbsp &nbsp &nbsp                           Kazi Oliur Rahman  <br>',
'&nbsp &nbsp&nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp      <a href="https://www.facebook.com/profile.php?id=100008439048723" align="left" target="-blank"> Facebook </a></p>',
'</div>',
'',
'',
'',
'<div style="float:left;width: 400px; height:200px;background-color:white;"> ',
'',
'<P> <b><h1 class ="h1_cus_coment"> "Customer Coments"</h1>This is word best Restaurant',
unistr('\201CExcellent environment, friendly service, '),
'great menu choices and really decent food and at affordable prices. Will be back. ',
unistr('\201C \201CWhat a lovely restaurant, good food and '),
'service and atmosphere, definitely hope to go back</b></p>',
'</div>',
'',
'<div style="width: 820px; height:200px;background-color:green; margin:0 0 0 10px;float:left;">',
'<img src="#APP_IMAGES#pizza.jpg" width="100%" height="100%">   ',
'</div>',
'',
'</html>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31365166384206775233)
,p_plug_name=>'last_one_year_sales_analysis'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(31365166477981775234)
,p_region_id=>wwv_flow_api.id(31365166384206775233)
,p_chart_type=>'line'
,p_title=>'Monlty Sales Analysis for Last 12 Months'
,p_height=>'250'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'slideToRight'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_fill_multi_series_gaps=>false
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_no_data_found_message=>'No sales for 12 months'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(31365166568908775235)
,p_chart_id=>wwv_flow_api.id(31365166477981775234)
,p_seq=>10
,p_name=>'Monthly Sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select round(sum(grant_total))Total ,to_char(order_date,''Month'')||to_char(order_date,''YYYY'') month',
'from order_master',
'group by to_char(order_date,''Month'') ||to_char(order_date,''YYYY'')',
'order by to_date(to_char(order_date,''Month'') ||to_char(order_date,''YYYY''),''MM-YYYY'') desc',
'fetch  next 13 rows only;',
'',
'',
'',
''))
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'MONTH'
,p_color=>'#056a02'
,p_line_style=>'solid'
,p_line_width=>3
,p_line_type=>'auto'
,p_marker_rendered=>'on'
,p_marker_shape=>'star'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_font_family=>'Impact'
,p_items_label_font_style=>'normal'
,p_items_label_font_size=>'12'
,p_items_label_font_color=>'#000000'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(31365166703808775237)
,p_chart_id=>wwv_flow_api.id(31365166477981775234)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Sales'
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
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'normal'
,p_tick_label_font_size=>'12'
,p_tick_label_font_color=>'#000000'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(31365166687717775236)
,p_chart_id=>wwv_flow_api.id(31365166477981775234)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Month'
,p_title_font_family=>'Impact'
,p_title_font_style=>'normal'
,p_title_font_size=>'16'
,p_title_font_color=>'#000000'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'none'
,p_tick_label_position=>'outside'
,p_tick_label_font_family=>'Impact'
,p_tick_label_font_style=>'normal'
,p_tick_label_font_size=>'12'
,p_tick_label_font_color=>'#000000'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(31365166881398775238)
,p_chart_id=>wwv_flow_api.id(31365166477981775234)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_title=>'Total Sales'
,p_title_font_family=>'Impact'
,p_title_font_style=>'normal'
,p_title_font_size=>'16'
,p_title_font_color=>'#000000'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_minor_step=>13
,p_tick_label_rendered=>'on'
,p_tick_label_font_family=>'Impact'
,p_tick_label_font_size=>'12'
,p_tick_label_font_color=>'#000000'
,p_split_dual_y=>'auto'
);
wwv_flow_api.component_end;
end;
/
