prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(37917132921971284510)
,p_name=>'master'
,p_alias=>'MASTER'
,p_step_title=>'master'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220307133757'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45664028457576456120)
,p_plug_name=>'master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37917031159958284468)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BC_TRN'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'master'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(45664028897379456120)
,p_name=>'master'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:P11_TRN_NO:\#TRN_NO#\'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'OLIURK2@GMAIL.COM'
,p_internal_uid=>45664028897379456120
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664028945857456120)
,p_db_column_name=>'TRN_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Trn No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664029374233456120)
,p_db_column_name=>'TRN_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Trn Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664029787525456121)
,p_db_column_name=>'TRN_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Trn Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664030193724456121)
,p_db_column_name=>'REQ_NO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Req No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664030501319456121)
,p_db_column_name=>'PROC_TYPE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Proc Type No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664030936860456121)
,p_db_column_name=>'SUPPLIER_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Supplier No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664031325979456121)
,p_db_column_name=>'WORK_ORDER_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Work Order Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664031788254456121)
,p_db_column_name=>'PROC_COMMITTEE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Proc Committee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664032156360456122)
,p_db_column_name=>'ORG_NO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Org No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664032568221456122)
,p_db_column_name=>'INSERT_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Insert By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664032909155456122)
,p_db_column_name=>'INSERT_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Insert Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664033343164456122)
,p_db_column_name=>'UPDATE_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Update By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45664033733346456122)
,p_db_column_name=>'UPDATE_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(45663875666413072663)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'456638757'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRN_NO:TRN_ID:TRN_DATE:REQ_NO:PROC_TYPE_NO:SUPPLIER_NO:WORK_ORDER_DATE:PROC_COMMITTEE:ORG_NO:INSERT_BY:INSERT_DATE:UPDATE_BY:UPDATE_DATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45664034961594456123)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(45664028457576456120)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(37917108295247284499)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11'
);
wwv_flow_api.component_end;
end;
/
