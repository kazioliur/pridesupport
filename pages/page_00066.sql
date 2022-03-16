prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Sale_Quantity_wise_food_Menu_ranking'
,p_alias=>'SALE-QUANTITY-WISE-FOOD-MENU-RANKING'
,p_page_mode=>'MODAL'
,p_step_title=>'Sale_Quantity_wise_food_Menu_ranking'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'t-PageBody--noContentPadding'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210908202419'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32238668786039132348)
,p_plug_name=>'New'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' SL number;',
'BEGIN',
'SL:= 0;',
'htp.p(''<style>',
'table',
'{',
'  border-collapse: collapse;',
'  border-radius: 5px;',
'}',
'',
'th',
'{',
'  border: 1px solid #d6d4d4;',
'    background-color:#739900;',
'  color: white;',
'  padding: 8px 3px;',
'}',
'td',
'{',
'  border: 1px solid #d6d4d4;',
'  text-align: center;',
'  padding: 8px 10px;',
'}',
'</style>'');',
'',
'htp.p(''',
' <h1 style="color: #3333ff;"><center> Sales Quantity-Wise Food Menu Ranking <center> </h1>',
' <table style="width:70%; margin: 10px auto;">',
' <tr>',
'    <th style = " width:100px;">Ranking</th>',
'    <th>Food Menu Name </th>',
'    <th style = " width:200px;">Sales Quantity</th>',
'  </tr>'');',
'',
' FOR oliur in (select food_menu_name, sum(quantity) quantiy',
'               from   order_view',
'               group  by food_menu_name',
'               order   by 2 desc)',
'  LOOP',
'   SL:= SL+1;',
'   htp.p(''<tr>',
'         <td style="text-align: center">''||htf.escape_sc(SL)||''</td>',
'         <td style="text-align: left">''||htf.escape_sc(oliur.food_menu_name)||''</td>',
'         <td style="text-align: right">''||htf.escape_sc(oliur.quantiy)||''</td>',
'        <tr>'');',
' END LOOP;',
'',
'htp.p(''</table>'');',
'',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32238668899757132349)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(32238668786039132348)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Print'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32238668971670132350)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32238668899757132349)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32546319000274076501)
,p_event_id=>wwv_flow_api.id(32238668971670132350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'Window.print();'
);
wwv_flow_api.component_end;
end;
/
