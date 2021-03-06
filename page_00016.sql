prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>20952813001415487158
,p_default_application_id=>103682
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DDD451261366WORKSPACE'
);
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(37917132921971284510)
,p_name=>'BC_TRNDTLSRL'
,p_alias=>'BC-TRNDTLSRL'
,p_step_title=>'BC_TRNDTLSRL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220317022816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47752855957048139903)
,p_plug_name=>'BC_TRNDTLSRL'
,p_region_name=>'GRID_REGION'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37917031159958284468)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'BC_TRNDTL'
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'BC_TRNDTLSRL'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752857212356139905)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752857732004139905)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752860159009139957)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752861141054139957)
,p_name=>'TRND_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRND_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'S_BC_REQDTL'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752862138857139958)
,p_name=>'TRN_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRN_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Trn No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752863160109139958)
,p_name=>'REQDTL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQDTL_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Reqdtl No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752864145418139958)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Item No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'S_ITEM'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752865231018139959)
,p_name=>'RCV_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RCV_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rcv Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'C_PRICE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752866241658139959)
,p_name=>'ISU_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISU_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Isu Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'C_QTY'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752867354113139960)
,p_name=>'ORG_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Org No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'C_TOTAL'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752868306489139960)
,p_name=>'INSERT_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERT_BY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Insert By'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752869389463139961)
,p_name=>'INSERT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERT_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Insert Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752870369162139961)
,p_name=>'UPDATE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_BY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Update By'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47752871383124139962)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Update Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(47752856485985139904)
,p_internal_uid=>47752856485985139904
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(47752856879218139904)
,p_interactive_grid_id=>wwv_flow_api.id(47752856485985139904)
,p_static_id=>'477528569'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(47752857089186139904)
,p_report_id=>wwv_flow_api.id(47752856879218139904)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752858141144139905)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(47752857732004139905)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752860585570139957)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(47752860159009139957)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752861595944139957)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(47752861141054139957)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752862524183139958)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(47752862138857139958)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752863583012139958)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(47752863160109139958)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752864648374139959)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(47752864145418139958)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752865621418139959)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(47752865231018139959)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752866707711139960)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(47752866241658139959)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752867715361139960)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(47752867354113139960)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752868793926139960)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(47752868306489139960)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752869709847139961)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(47752869389463139961)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752870704448139962)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(47752870369162139961)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47752871719719139962)
,p_view_id=>wwv_flow_api.id(47752857089186139904)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(47752871383124139962)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47769728524735078103)
,p_plug_name=>'GRAND_TOTAL'
,p_region_name=>'C_GRANT_TOTAL_R'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(37917035464237284470)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47769728626422078104)
,p_name=>'P16_SUBTPTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47769728524735078103)
,p_prompt=>'Subtptal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(37917105703670284498)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47769728785562078105)
,p_name=>'P16_GRAND_TOTAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(47769728524735078103)
,p_prompt=>'Subtptal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(37917105703670284498)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47769729044513078108)
,p_name=>'P16_ITEM_SUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47752855957048139903)
,p_prompt=>'Item Sum'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(37917105703670284498)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47769729376030078111)
,p_name=>'SUM'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(47752855957048139903)
,p_triggering_element=>'ISU_QTY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47769729494118078112)
,p_event_id=>wwv_flow_api.id(47769729376030078111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(47752855957048139903)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var model = apex.region("GRID_REGION").widget().interactiveGrid("getViews", "grid").model;',
'var qtyKey = model.getFieldKey("ISU_QTY");',
'var totKey = model.getFieldKey("C_PRICE");',
'var totQty = 0;',
'var totAmt = 0;',
'model.forEach(function(r) {',
'    var qty = parseFloat(r[qtyKey], 10);',
'    var tot = parseFloat(r[totKey], 10);',
'    if (!isNaN(qty)) {',
'        totQty += qty;',
'    }',
'    if (!isNaN(tot)) {',
'        totAmt += tot;',
'    }    ',
'});',
'$s(''P16_SUBTPTAL'',totQty);',
'$s(''P16_GRAND_TOTAL'',totAmt);'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47752872301144139962)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(47752855957048139903)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'BC_TRNDTLSRL - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
