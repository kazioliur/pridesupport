prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Guest_wise_food_menu_consume'
,p_alias=>'FOOD-MENU-HTML'
,p_step_title=>'Food Menu(HTMl)'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210918171750'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34807177058647750915)
,p_plug_name=>'parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<h1 style="color: #3333ff;"><center> Guest-Wise Food Menu Consume <center> </h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(34807177193866750916)
,p_name=>'guest-Wise food menu consume'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>8
,p_display_column=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   guest_id,(select guest_name from guest where guest_id = m.guest_id) Guest_name,sum(quantity) quantity, Food_menu_name',
'from     order_master M, order_detail d,food_menu f',
'where    d.invoice = m.invoice',
'and      d.food_menu_id = f.food_menu_id',
'and      guest_id  like nvl(:P48_GUEST_ID,''%'')',
'group by guest_id,Food_menu_name',
'order by quantity desc;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P48_GUEST_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'1:2'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34807177309037750918)
,p_query_column_id=>1
,p_column_alias=>'GUEST_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Guest ID'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34807177881391750923)
,p_query_column_id=>2
,p_column_alias=>'GUEST_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Guest Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34807177465942750919)
,p_query_column_id=>3
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>40
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_sum_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34807177575969750920)
,p_query_column_id=>4
,p_column_alias=>'FOOD_MENU_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Food Menu Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34807177272583750917)
,p_name=>'P48_GUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(34807177058647750915)
,p_prompt=>'Guest ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'GUEST_NAME_GUEST_ID'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select guest_name,guest_id',
'from   guest',
'order  by guest_id desc;'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34807177604506750921)
,p_name=>'refresh '
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_GUEST_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34807177765361750922)
,p_event_id=>wwv_flow_api.id(34807177604506750921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(34807177193866750916)
);
wwv_flow_api.component_end;
end;
/
