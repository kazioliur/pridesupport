prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
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
 p_id=>84
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'HTML REPORT'
,p_alias=>'HTML-REPORT'
,p_step_title=>'HTML REPORT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211125012955'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13921885442096179432)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'htp.p(''<style>',
'table{ ',
'    width:100%;',
'    height: 80%;',
'    border-collapse: collapse;',
'}',
'',
'    th{',
'        text-align: center;',
'        color: solid balck;',
'        width: 25px;',
'        border-collapse: collapse;',
'}',
'',
'    td {',
'        border-collapse: collapse;',
'        ',
'    }',
'',
'',
'',
'    </style>'');',
'    htp.p(''<table> ',
'           <tr>',
'               <th> name </th>',
'               <th> salary</th>',
'               ',
'               </tr>'');',
'',
' cursor v_cur is',
'           (select first_name, salary',
'           from   employee;',
' begin',
' for v in v_cur',
' loop ',
' htp.p(''<tr>',
'<td >''||htf.escape_sc(v.first_name)||''</td>',
'         <td>''||htf.escape_sc(v.salary)||''</td>',
' </tr>'');',
'',
' end loop;',
'',
' htp.p(''</table>'');',
'',
'end;'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35139097919780947116)
,p_plug_name=>'New'
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>3
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'htp.p(''<title> Supplier-Wise Purchase Paid and Due</title>'');',
'htp.p(''<style>',
'table',
'{',
' border-collapse: collapse;',
'  border: 2px solid red;',
'  background-color:powderblue;',
'}',
'',
'th',
'{',
'  border: 1px solid blue;',
'  background-color:yellow;',
'}',
'td',
'{  padding:5px 10px;',
'  border: 1px solid black;',
'  text-align: center;',
'}',
'</style>'');',
'',
' --htp.p(''<tr> <td style ="border:none;" colspan="10"; font-size="10";><b>''||olilur1.department_name||''</b></td></tr>'');',
' -- for olilur1 in (select department_name',
'             --   from    employee_view)',
'             --   loop',
'               --  htp.p(''<tr> <td style ="border:none;" colspan="10"; font-size="10";><b>''||olilur1.department_name||''</b></td></tr>'');',
'        --htp.p(''<tr> <td style="text-align: center">''||htf.escape_sc(olilur1.department_name)||''</td></tr> '');',
'',
'        htp.p(''<h4 style="padding:2px 2px 2px 150px;">  Supplier Wise Due   </h4>'');',
'htp.p(''',
' <table style="width:70%">',
' <tr>',
'    <th style="width: 200px;">Supplier Name</th>',
'    <th style="width: 160px">Total Purchase</th>',
'    <th style="width: 150px">Total Purchase Paid</th>',
'    <th style="width: 150px">Due</th>',
'  </tr>'');',
' FOR oliur in (select supplier_name, sum(grand_total) total_purchase,sum(paid_amount) Purchase_paid,sum(due) total_due',
'               from   supplier,purchase_master',
'               where  purchase_master.supplier_id=supplier.supplier_id',
'               group  by supplier_name)',
'  LOOP',
'   htp.p(''<tr>',
'         <td style="text-align: left; Width: 80px;">''||htf.escape_sc(oliur.supplier_name)||''</td>',
'         <td style="text-align: right">''||htf.escape_sc(oliur.total_purchase)||''</td>',
'         <td style="text-align: right">''||htf.escape_sc(oliur.Purchase_paid)||''</td>',
'         <td style="text-align: right">''||htf.escape_sc(oliur.total_due)||''</td>',
'        <tr>'');',
'        --end loop;',
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
