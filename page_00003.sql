prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(37917132921971284510)
,p_name=>'requisition master detail'
,p_alias=>'REQUISITION-MASTER-DETAIL'
,p_step_title=>'requisition master detail'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>wwv_flow_api.id(37916848319562284435)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220304133250'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44949403031468035663)
,p_plug_name=>'requisition master detail'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(37917013392892284462)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44949404229291035664)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(37916881096511284450)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44949405072815035664)
,p_name=>'Master Records'
,p_template=>wwv_flow_api.id(37916882445944284450)
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "REQ_NO",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P3_REQ_NO'', p_values => "REQ_NO") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P3_REQ_NO,''0'') = "REQ_NO"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("APPROVE_DATE", 1, 50)||( case when length("APPROVE_DATE") > 50 then ''...'' end ) list_title,',
'    substr("REQ_DATE", 1, 50)||( case when length("REQ_DATE") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "BC_REQ" x',
'where (:P3_SEARCH is null',
'        or upper(x."APPROVE_DATE") like ''%''||upper(:P3_SEARCH)||''%''',
'        or upper(x."REQ_DATE") like ''%''||upper(:P3_SEARCH)||''%''',
'    )',
'order by "APPROVE_DATE"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P3_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(37917069983288284482)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No data found.</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949405779963035667)
,p_query_column_id=>1
,p_column_alias=>'REQ_NO'
,p_column_display_sequence=>1
,p_column_heading=>'REQ_NO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949406195003035667)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'LINK_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949406576034035667)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'LINK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949406930996035667)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'ICON_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949407395084035668)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'LINK_ATTR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949407747842035668)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'ICON_COLOR_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949408197149035668)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'LIST_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949408568291035668)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'LIST_TITLE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949408956706035668)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'LIST_TEXT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949409301349035669)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'LIST_BADGE'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44949409836359035772)
,p_name=>'Bc Req'
,p_template=>wwv_flow_api.id(37917035464237284470)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'BC_REQ'
,p_query_where=>'"REQ_NO" = :P3_REQ_NO'
,p_include_rowid_column=>false
,p_display_when_condition=>'P3_REQ_NO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(37917076120999284485)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949410463560035772)
,p_query_column_id=>1
,p_column_alias=>'REQ_NO'
,p_column_display_sequence=>1
,p_column_heading=>'Req No'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REQ_NO" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949410815427035773)
,p_query_column_id=>2
,p_column_alias=>'REQ_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Req Id'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REQ_ID" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949411282546035773)
,p_query_column_id=>3
,p_column_alias=>'REQ_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Req Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REQ_DATE" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949411668166035773)
,p_query_column_id=>4
,p_column_alias=>'REQ_BY'
,p_column_display_sequence=>4
,p_column_heading=>'Req By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REQ_BY" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949412080046035773)
,p_query_column_id=>5
,p_column_alias=>'STORE_NO'
,p_column_display_sequence=>5
,p_column_heading=>'Store No'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "STORE_NO" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949412433500035773)
,p_query_column_id=>6
,p_column_alias=>'SUBMIT_BY'
,p_column_display_sequence=>6
,p_column_heading=>'Submit By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "SUBMIT_BY" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949412865283035774)
,p_query_column_id=>7
,p_column_alias=>'SUBMIT_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Submit Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "SUBMIT_DATE" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949413229047035774)
,p_query_column_id=>8
,p_column_alias=>'APPROVE_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Approve By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "APPROVE_BY" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949413611026035774)
,p_query_column_id=>9
,p_column_alias=>'APPROVE_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Approve Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "APPROVE_DATE" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949414072229035774)
,p_query_column_id=>10
,p_column_alias=>'REJECT_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Reject By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REJECT_BY" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949414442783035774)
,p_query_column_id=>11
,p_column_alias=>'REJECT_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Reject Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REJECT_DATE" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949414857292035774)
,p_query_column_id=>12
,p_column_alias=>'REJECT_CAUSE'
,p_column_display_sequence=>12
,p_column_heading=>'Reject Cause'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "REJECT_CAUSE" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949415257660035775)
,p_query_column_id=>13
,p_column_alias=>'ORG_NO'
,p_column_display_sequence=>13
,p_column_heading=>'Org No'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "ORG_NO" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949415696954035775)
,p_query_column_id=>14
,p_column_alias=>'INSERT_BY'
,p_column_display_sequence=>14
,p_column_heading=>'Insert By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "INSERT_BY" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949416094234035775)
,p_query_column_id=>15
,p_column_alias=>'INSERT_DATE'
,p_column_display_sequence=>15
,p_column_heading=>'Insert Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "INSERT_DATE" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949416465241035775)
,p_query_column_id=>16
,p_column_alias=>'UPDATE_BY'
,p_column_display_sequence=>16
,p_column_heading=>'Update By'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "UPDATE_BY" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44949416811246035775)
,p_query_column_id=>17
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>17
,p_column_heading=>'Update Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "BC_REQ"',
'where "UPDATE_DATE" is not null',
'and "REQ_NO" = :P3_REQ_NO'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44949428173393035783)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(37916881096511284450)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P3_REQ_NO'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44949428551142035783)
,p_plug_name=>'Bc Reqdtl'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37917031159958284468)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'BC_REQDTL'
,p_query_where=>'"REQ_NO" = :P3_REQ_NO'
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P3_REQ_NO'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Bc Reqdtl'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44954582394972504902)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44954582409006504903)
,p_name=>'REQDTL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQDTL_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44954582533420504904)
,p_name=>'REQ_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Req No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44954582691574504905)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Item No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44954582766370504906)
,p_name=>'BATCH_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Batch Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44954582825708504907)
,p_name=>'REQ_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Req Qty'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44954582922408504908)
,p_name=>'APP_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'App Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44954583063749504909)
,p_name=>'ORG_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Org No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44954583131647504910)
,p_name=>'INSERT_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERT_BY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Insert By'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44954583220645504911)
,p_name=>'INSERT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERT_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Insert Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44954583322100504912)
,p_name=>'UPDATE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_BY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Update By'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44954583498117504913)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Update Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(44954582221859504901)
,p_internal_uid=>44954582221859504901
,p_is_editable=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(44954592927021505853)
,p_interactive_grid_id=>wwv_flow_api.id(44954582221859504901)
,p_static_id=>'449545930'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(44954593170352505853)
,p_report_id=>wwv_flow_api.id(44954592927021505853)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44954593642181505855)
,p_view_id=>wwv_flow_api.id(44954593170352505853)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(44954582394972504902)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44954594536980505857)
,p_view_id=>wwv_flow_api.id(44954593170352505853)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(44954582409006504903)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44954595427766505859)
,p_view_id=>wwv_flow_api.id(44954593170352505853)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(44954582533420504904)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44954596379597505861)
,p_view_id=>wwv_flow_api.id(44954593170352505853)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(44954582691574504905)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44954597277673505863)
,p_view_id=>wwv_flow_api.id(44954593170352505853)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(44954582766370504906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44954598398023505864)
,p_view_id=>wwv_flow_api.id(44954593170352505853)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(44954582825708504907)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44954599120869505866)
,p_view_id=>wwv_flow_api.id(44954593170352505853)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(44954582922408504908)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44954600057392505869)
,p_view_id=>wwv_flow_api.id(44954593170352505853)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(44954583063749504909)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44954600927045505871)
,p_view_id=>wwv_flow_api.id(44954593170352505853)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(44954583131647504910)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44954601878894505873)
,p_view_id=>wwv_flow_api.id(44954593170352505853)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(44954583220645504911)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44954602703024505874)
,p_view_id=>wwv_flow_api.id(44954593170352505853)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(44954583322100504912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44954603656507505876)
,p_view_id=>wwv_flow_api.id(44954593170352505853)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(44954583498117504913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44949454070462035895)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(37916881096511284450)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P3_REQ_NO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44949438490739035845)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44949428551142035783)
,p_button_name=>'POP_BC_REQDTL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(37917107519869284498)
,p_button_image_alt=>'Add Bc Reqdtl'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP,5:P5_REQ_NO:&P3_REQ_NO.'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44949454575772035896)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(44949409836359035772)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(37917108365200284499)
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RP,4:P4_REQ_NO:&P3_REQ_NO.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44949403514707035663)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44949403031468035663)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(37917108365200284499)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.:RESET:&DEBUG.:RP,3::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44949403924348035663)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(44949403031468035663)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(37917108365200284499)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RP,4::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44949404624496035664)
,p_name=>'P3_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44949404229291035664)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(37917105459469284497)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44949427792817035782)
,p_name=>'P3_REQ_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(44949409836359035772)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44949454894018035896)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(44949409836359035772)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44949455434633035896)
,p_event_id=>wwv_flow_api.id(44949454894018035896)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(44949409836359035772)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>20952813001415487158
,p_default_application_id=>103682
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DDD451261366WORKSPACE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44949455904960035897)
,p_event_id=>wwv_flow_api.id(44949454894018035896)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Bc Req row(s) updated.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44949428681643035783)
,p_name=>'Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(44949428551142035783)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44949439185728035845)
,p_event_id=>wwv_flow_api.id(44949428681643035783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(44949428551142035783)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44949439666355035845)
,p_event_id=>wwv_flow_api.id(44949428681643035783)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Bc Reqdtl row(s) updated.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44949454984053035896)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44949456753052035898)
,p_event_id=>wwv_flow_api.id(44949454984053035896)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(44949405072815035664)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44949457208241035898)
,p_event_id=>wwv_flow_api.id(44949454984053035896)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.component_end;
end;
/
