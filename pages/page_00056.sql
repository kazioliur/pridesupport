prompt --application/pages/page_00056
begin
--   Manifest
--     PAGE: 00056
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
 p_id=>56
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Usertype_user_information'
,p_alias=>'USERTYPE-USER-INFORMATION'
,p_step_title=>'Usertype_user_information'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211022074730'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32074034852506844306)
,p_plug_name=>'Usertype-Wise User Report'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--large:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35139097222301947109)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_api.id(32074034852506844306)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32074034914898844307)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(32074034852506844306)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Print'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35139096997006947106)
,p_name=>'P56_REPORT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32074034852506844306)
,p_prompt=>'Report Name'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Employee Contact Details;1,;Return2'
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(21352784253487583033)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.component_end;
end;
/
