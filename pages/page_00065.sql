prompt --application/pages/page_00065
begin
--   Manifest
--     PAGE: 00065
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
 p_id=>65
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Sales Quantity-Wise Food Menu Ranking'
,p_alias=>'SALES-AMOUNT-WISE-FOOD-MENU-RANKING'
,p_step_title=>'Sales_amount_wise_food_menu_ranking'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210919162532'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32238668085253132341)
,p_plug_name=>'Dynamic contant Report'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>20
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
' <h1 style="color: #3333ff;"><center> Income-Wise Food Menu Ranking <center> </h1>',
' <table style="width:70%; margin: 10px auto;">',
' <tr>',
'    <th style = " width:100px;">Ranking</th>',
'    <th>Food Menu Name </th>',
'    <th style = " width:200px;">Total Income</th>',
'  </tr>'');',
'',
' FOR oliur in (select food_menu_name, to_char((sum(quantity) *  price),''99,99,99,999.99'') quantiy',
'               from   order_view',
'               group  by food_menu_name,price',
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
wwv_flow_api.component_end;
end;
/
