prompt --application/pages/page_00072
begin
--   Manifest
--     PAGE: 00072
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
 p_id=>72
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Supplier_Information'
,p_alias=>'SUPPLIER-INFORMATION'
,p_step_title=>'Supplier_Information'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210916085559'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32546321535848076526)
,p_plug_name=>'Parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>' <h1 style="color: #3333ff;"><center> Supplier Contact Details  <center> </h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32950026142513902934)
,p_name=>'Supplier Information'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>20
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--standardPadding:t-Form--xlarge:margin-top-none:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SUPPLIER_ID,',
'       SUPPLIER_NAME,',
'       CELL_NUMBER,',
'       EMAIL,',
'       ADDRESS,',
'       WEBSITE',
'  from SUPPLIER',
'  where SUPPLIER_ID like nvl(:P72_SUPPLIER_ID, ''%'')'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P72_SUPPLIER_ID'
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
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32950026586556902935)
,p_query_column_id=>1
,p_column_alias=>'SUPPLIER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Supplier Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32950026924941902936)
,p_query_column_id=>2
,p_column_alias=>'SUPPLIER_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Supplier Name'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32950027235674902936)
,p_query_column_id=>3
,p_column_alias=>'CELL_NUMBER'
,p_column_display_sequence=>30
,p_column_heading=>'Cell Number'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32950027604644902936)
,p_query_column_id=>4
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>40
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="display:block ; width:200px ;" > #EMAIL# </span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32950028015854902936)
,p_query_column_id=>5
,p_column_alias=>'ADDRESS'
,p_column_display_sequence=>50
,p_column_heading=>'Address'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="display:block ; width:400px ;" > #ADDRESS# </span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32950028462642902937)
,p_query_column_id=>6
,p_column_alias=>'WEBSITE'
,p_column_display_sequence=>60
,p_column_heading=>'Website'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="display:block ; width:300px ;" > #WEBSITE# </span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32546322100739076532)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(32546321535848076526)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_redirect_url=>'https://apex.oracle.com/pls/apex/f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=supplier_contact_details'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32546321648020076527)
,p_name=>'P72_SUPPLIER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32546321535848076526)
,p_prompt=>'Supplier Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SUPPLIER_NAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supplier_name, supplier_id',
'from   supplier',
'order  by supplier_id desc;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32546321791696076528)
,p_name=>'refresh report region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_SUPPLIER_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32546321802749076529)
,p_event_id=>wwv_flow_api.id(32546321791696076528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32950026142513902934)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32546321989217076530)
,p_name=>'clear parameter'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32546322064760076531)
,p_event_id=>wwv_flow_api.id(32546321989217076530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_SUPPLIER_ID'
);
wwv_flow_api.component_end;
end;
/
