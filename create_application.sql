prompt --application/create_application
begin
--   Manifest
--     FLOW: 141546
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.4'
,p_default_workspace_id=>20952813001415487158
,p_default_application_id=>141546
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DDD451261366WORKSPACE'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_DDD451261366WORKSPACE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'ddd45_restaurant')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DDD45-RESTAURANT')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'98C00A6E4FF666FB19CEC549C9787886E936D76E37DCB080B6CCB795CBED7221'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD-MON-RR'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2021.07.16.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(24216902924104101287)
,p_application_tab_set=>1
,p_logo_type=>'IT'
,p_logo=>'#APP_FILES#logo_for_apex.jpg'
,p_logo_text=>'Restaurant Management System'
,p_app_builder_icon_name=>'#WORKSPACE_IMAGES#logo_for_apex.jpg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'ddd45_restaurant'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220302172731'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>14
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'N'
);
wwv_flow_api.component_end;
end;
/
