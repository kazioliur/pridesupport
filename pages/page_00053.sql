prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
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
 p_id=>53
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'supplier_wise_current_due'
,p_alias=>'SUPPLIER-WISE-CURRENT-DUE1'
,p_step_title=>'supplier_wise_current_due'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210920014756'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31365167609074775246)
,p_plug_name=>'parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<h1 style="color: #3333ff;"><center> Supplier-Wise Current Due  <center> </h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31365167848161775248)
,p_name=>'Supplier_wise_current_due'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_column=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  (select supplier_name from supplier where supplier_id = purchase_master.supplier_id) supplier_id, count_sum_puchase_due(supplier_id) - nvl(count_sum_puchase_payment(supplier_id),0) Current_due',
'from    purchase_master',
'where   supplier_id like nvl(:P53_SUPPLIER_ID,''%'')',
'group   by supplier_id',
'order   by 2 desc;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P53_SUPPLIER_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total:'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32546323248108076543)
,p_query_column_id=>1
,p_column_alias=>'SUPPLIER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Supplier Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="display:block ; width:400px ;" > #SUPPLIER_ID# </span>',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32546323313527076544)
,p_query_column_id=>2
,p_column_alias=>'CURRENT_DUE'
,p_column_display_sequence=>20
,p_column_heading=>'Current Due'
,p_use_as_row_header=>'N'
,p_column_format=>'99,99,99,999.99'
,p_column_html_expression=>'<span style="display:block ; width:200px ;" > #CURRENT_DUE# </span>'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32546323861959076549)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31365167609074775246)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_redirect_url=>'https://apex.oracle.com/pls/apex/f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=Supplier_current_due'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31365167725556775247)
,p_name=>'P53_SUPPLIER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31365167609074775246)
,p_prompt=>'Supplier Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  (select supplier_name from supplier where supplier_id = purchase_master.supplier_id) supplier_Name, supplier_id',
'from    purchase_master',
'where   (count_sum_puchase_due(supplier_id) - nvl(count_sum_puchase_payment(supplier_id),0)) > 0 ',
'group   by supplier_id',
'order   by 2 desc;'))
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
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32546323493470076545)
,p_name=>'refresh_region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P53_SUPPLIER_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32546323561540076546)
,p_event_id=>wwv_flow_api.id(32546323493470076545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31365167848161775248)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32546323614346076547)
,p_name=>'clurar_parameter'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32546323757039076548)
,p_event_id=>wwv_flow_api.id(32546323614346076547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P53_SUPPLIER_ID'
);
wwv_flow_api.component_end;
end;
/
