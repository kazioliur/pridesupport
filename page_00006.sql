prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(37917132921971284510)
,p_name=>'Requisiton Master'
,p_alias=>'REQUISITON-MASTER'
,p_step_title=>'Requisiton Master'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220304140106'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44961207551219666905)
,p_plug_name=>'Requisiton Master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37917031159958284468)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BC_REQ'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Requisiton Master'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(44961207955897666905)
,p_name=>'Requisiton Master'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:P7_REQ_NO:\#REQ_NO#\'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'OLIURK2@GMAIL.COM'
,p_internal_uid=>44961207955897666905
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961208054452666905)
,p_db_column_name=>'REQ_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Req No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961208493666666906)
,p_db_column_name=>'REQ_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Req Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961208852500666906)
,p_db_column_name=>'REQ_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Req Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961209205230666906)
,p_db_column_name=>'REQ_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Req By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961209616462666907)
,p_db_column_name=>'STORE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Store No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961210007124666907)
,p_db_column_name=>'SUBMIT_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Submit By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961210491791666907)
,p_db_column_name=>'SUBMIT_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Submit Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961210896916666907)
,p_db_column_name=>'APPROVE_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Approve By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961211266885666907)
,p_db_column_name=>'APPROVE_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Approve Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961211636047666907)
,p_db_column_name=>'REJECT_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Reject By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961212031552666908)
,p_db_column_name=>'REJECT_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Reject Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961212442577666908)
,p_db_column_name=>'REJECT_CAUSE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Reject Cause'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961212848343666908)
,p_db_column_name=>'ORG_NO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Org No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961213293513666908)
,p_db_column_name=>'INSERT_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Insert By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961213656480666908)
,p_db_column_name=>'INSERT_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Insert Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961214037647666908)
,p_db_column_name=>'UPDATE_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Update By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44961214466251666909)
,p_db_column_name=>'UPDATE_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(44962235397015675481)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'449622354'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REQ_NO:REQ_ID:REQ_DATE:REQ_BY:STORE_NO:SUBMIT_BY:SUBMIT_DATE:APPROVE_BY:APPROVE_DATE:REJECT_BY:REJECT_DATE:REJECT_CAUSE:ORG_NO:INSERT_BY:INSERT_DATE:UPDATE_BY:UPDATE_DATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44961215669999666909)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(44961207551219666905)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(37917108295247284499)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7'
);
wwv_flow_api.component_end;
end;
/
