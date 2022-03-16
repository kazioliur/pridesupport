prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Department-Wise Employee Information'
,p_alias=>'DEPARTMENT-WISE-EMPLOYEE-INFORMATION'
,p_step_title=>'Department-Wise Employee Information'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210901040959'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30957566897526094006)
,p_plug_name=>'employee information'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>3
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'htp.p(''<style>',
'table',
'{',
' border-collapse: collapse;',
'  border: 2px solid black;',
'  background-color:white;',
'}',
'',
'th',
'{',
'  border: 1px solid black;',
'  background-color:#91908d;',
'  padding:5px 10px;',
'}',
'td',
'{  padding:5px 10px;',
'  border: 1px solid black;',
'  text-align: center;',
'}',
'</style>'');',
'',
'htp.p(''<h1>Department-Wise Employee Information </h1> <br>'');',
'',
'',
'htp.p(''',
' <table style="width:50%">',
' <tr>',
'    <th style="width: 80px">Emp ID</th>',
'    <th>Employee Name</th>',
'    <th style="width: 160px">Salary</th>',
'    <th style="width: 150px">Join Date</th>',
'  </tr>'');',
' --htp.p(''<tr> <td style ="border:none;" colspan="10"; font-size="10";><b>''||olilur1.department_name||''</b></td></tr>'');',
'  for olilur1 in (select distinct department_name',
'                from    employee_view)',
'                loop',
'                 htp.p(''<tr> <td style ="border:none;" colspan="10"; font-size="10";><b>''||''Department Name: ''||olilur1.department_name||''</b></td></tr>'');',
'        --htp.p(''<tr> <td style="text-align: center">''||htf.escape_sc(olilur1.department_name)||''</td></tr> '');',
'',
' FOR oliur in (select employee_id,'' ''||'' ''||employee_name employee_name,',
'                    to_char(salary,''99,99,99,999.99'')salary,',
'                    to_char(join_date,''dd-mm-rrrr'')join_date',
'             from   EMPLOYEE_VIEW',
'             where  department_name =olilur1.department_name',
'             order  by employee_id)',
'  LOOP',
'   htp.p(''<tr>',
'         <td style="text-align: center">''||htf.escape_sc(oliur.employee_id)||''</td>',
'         <td style="text-align: Left">''||htf.escape_sc(oliur.employee_name)||''</td>',
'         <td style="text-align: right">''||htf.escape_sc(oliur.salary)||''</td>',
'         <td style="text-align: center">''||htf.escape_sc(oliur.join_date)||''</td>',
'        <tr>'');',
'        end loop;',
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
