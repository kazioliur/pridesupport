prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(21352811266698583054)
,p_name=>'Purchase_master'
,p_alias=>'PURCHASE-MASTER'
,p_step_title=>'Purchase_master'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
' function setFocus(PageItem) {',
'  if (event.keyCode == 13) {',
'  document.getElementById(PageItem).focus();',
'  }',
' }',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return (new ApexPages.StandardController(theDiscussion)).view();',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLIURK2@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210916085559'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26421125488408146032)
,p_plug_name=>'Purchase Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_column=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26421125592354146033)
,p_name=>'report'
,p_template=>wwv_flow_api.id(21352721678779582998)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:margin-top-sm:margin-bottom-none:margin-left-none:margin-right-sm'
,p_component_template_options=>'[object Object]:[object Object]:[object Object]:[object Object]'
,p_new_grid_row=>false
,p_grid_column_span=>5
,p_display_column=>5
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID SL#,(select purchase_item_name from purchase_item where purchase_item_id =C001) ITEM_NAME,C002 QUANTITY,  C004 Unit,C003 PRICE, C002*C003 TOTAL_UNIT_PRICE',
'FROM   APEX_COLLECTIONS',
'WHERE  COLLECTION_NAME=''PURCHASE'';'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26421126473418146042)
,p_query_column_id=>1
,p_column_alias=>'SL#'
,p_column_display_sequence=>10
,p_column_heading=>'Sl#'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29269820407192494426)
,p_query_column_id=>2
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Item Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26421126687784146044)
,p_query_column_id=>3
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>30
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27041412667308228125)
,p_query_column_id=>4
,p_column_alias=>'UNIT'
,p_column_display_sequence=>40
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26421126763133146045)
,p_query_column_id=>5
,p_column_alias=>'PRICE'
,p_column_display_sequence=>50
,p_column_heading=>'Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26421126805659146046)
,p_query_column_id=>6
,p_column_alias=>'TOTAL_UNIT_PRICE'
,p_column_display_sequence=>60
,p_column_heading=>'Unit Total'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26474529539078197660)
,p_plug_name=>'Purchae Master'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'PURCHASE_MASTER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27041413325134228132)
,p_plug_name=>'New'
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>10
,p_plug_source=>'<center><marquee> <h1> <b> Purchase Information Entry Form</b> </h1> </marquee></center>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27297189822693593546)
,p_plug_name=>'Top Five Supplier'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:margin-top-sm:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(21352721678779582998)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(27297189919945593547)
,p_region_id=>wwv_flow_api.id(27297189822693593546)
,p_chart_type=>'pie'
,p_title=>'Top Five Suppliers'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(27297190058968593548)
,p_chart_id=>wwv_flow_api.id(27297189919945593547)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Supplier_name,sum(total_amount)',
'from   supplier s, purchase_master m ',
'where  m.supplier_id = s.supplier_id',
'group  by supplier_name ',
'order  by 2 desc ',
'fetch  first 5 rows only;'))
,p_series_name_column_name=>'SUPPLIER_NAME'
,p_items_value_column_name=>'SUM(TOTAL_AMOUNT)'
,p_items_label_column_name=>'SUPPLIER_NAME'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(27675700761040093002)
,p_name=>'curren due report'
,p_template=>wwv_flow_api.id(21352719760576582997)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INVOICE,(select supplier_name from supplier where supplier_id=purchase_master.supplier_id)',
'       SUPPLIER_NAME,',
'       PURCHASE_DATE,',
'       TOTAL_AMOUNT,',
'       DISCOUNT,',
'       GRAND_TOTAL,',
'       ''Paid ''|| ceil(nvl(PAID_AMOUNT,0) / GRAND_TOTAL * 100)||''% of Grant Total'' Paid_Ratio_on_Delivery_Day,',
'       PAYMENT_MODE,',
'       PAID_AMOUNT,',
'       DUE',
'  from PURCHASE_MASTER',
'  Where SUPPLIER_ID=:P41_SUPPLIER_ID;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P41_SUPPLIER_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(21352751769094583011)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27675702861458093023)
,p_query_column_id=>1
,p_column_alias=>'INVOICE'
,p_column_display_sequence=>30
,p_column_heading=>'Invoice'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27675702916514093024)
,p_query_column_id=>2
,p_column_alias=>'SUPPLIER_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Supplier Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27675703031492093025)
,p_query_column_id=>3
,p_column_alias=>'PURCHASE_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Purchase Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27675703135305093026)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_AMOUNT'
,p_column_display_sequence=>50
,p_column_heading=>'Total Amount'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27675703279924093027)
,p_query_column_id=>5
,p_column_alias=>'DISCOUNT'
,p_column_display_sequence=>60
,p_column_heading=>'Discount'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27675703328730093028)
,p_query_column_id=>6
,p_column_alias=>'GRAND_TOTAL'
,p_column_display_sequence=>70
,p_column_heading=>'Grand Total'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style=color:black;font-weight:bold;"><h4> #GRAND_TOTAL# <h4></span>'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28026913405293190048)
,p_query_column_id=>7
,p_column_alias=>'PAID_RATIO_ON_DELIVERY_DAY'
,p_column_display_sequence=>110
,p_column_heading=>'Paid Ratio On Delivery Day'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style=color:black;font-weight:bold;"><h4> #PAID_RATIO_ON_DELIVERY_DAY# <h4></span>'
,p_column_hit_highlight=>'%'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27675703477948093029)
,p_query_column_id=>8
,p_column_alias=>'PAYMENT_MODE'
,p_column_display_sequence=>80
,p_column_heading=>'Payment Mode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27675703585425093030)
,p_query_column_id=>9
,p_column_alias=>'PAID_AMOUNT'
,p_column_display_sequence=>90
,p_column_heading=>'Paid Amount'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style=color:black;font-weight:bold;"><h4> #PAID_AMOUNT# <h4></span>'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27675703618059093031)
,p_query_column_id=>10
,p_column_alias=>'DUE'
,p_column_display_sequence=>100
,p_column_heading=>'Due'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26474538004580197676)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Change'
,p_button_position=>'CHANGE'
,p_button_condition=>'P41_INVOICE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26474536801939197674)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(26421125488408146032)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26474538432333197676)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(26421125488408146032)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P41_INVOICE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26474537699906197675)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21352786737075583034)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P41_INVOICE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26568620544276976032)
,p_branch_name=>'page'
,p_branch_action=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26421125794167146035)
,p_name=>'P41_QUANTITY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_prompt=>'Quantity:'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeypress = "setFocus(''P41_PRICE'')";'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26421125811519146036)
,p_name=>'P41_PRICE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_prompt=>'Unit Price:'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeypress = "setFocus(''P41_ITEM_ID'')";'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26421125952831146037)
,p_name=>'P41_ITEM_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_prompt=>'Item Name:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PURCHASE_ITEM_NAME'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26474529881233197661)
,p_name=>'P41_INVOICE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_item_source_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_prompt=>'Invoice:'
,p_source=>'INVOICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_tag_attributes=>'onkeypress = "setFocus(''P41_SUPPLIER_ID'')";'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-md:margin-right-lg'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26474530275600197664)
,p_name=>'P41_SUPPLIER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_item_source_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_prompt=>'Supplier Name:'
,p_source=>'SUPPLIER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SUPPLIER_NAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supplier_name, supplier_id',
'from   supplier',
'order  by supplier_id desc;'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'onkeypress = "setFocus(''P41_ITEM_ID'')";'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>8
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-none:margin-right-none'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26474530653616197664)
,p_name=>'P41_PURCHASE_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_item_source_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_prompt=>'Purchase Date:'
,p_format_mask=>'DD Month,YYYY'
,p_source=>'PURCHASE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-none:margin-left-none:margin-right-none'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26474531023851197664)
,p_name=>'P41_TOTAL_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26421125488408146032)
,p_item_source_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_source=>'TOTAL_AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26474531466609197665)
,p_name=>'P41_PAYMENT_MODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26421125488408146032)
,p_item_source_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_prompt=>'Payment Mode:'
,p_source=>'PAYMENT_MODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PAYMENT MODE'
,p_lov=>'.'||wwv_flow_api.id(26575720809821688038)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>50
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26474531804733197665)
,p_name=>'P41_DISCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26421125488408146032)
,p_item_source_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_prompt=>'Discount:'
,p_source=>'DISCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'onkeypress = "setFocus(''P41_PAYMENT_MODE'')";'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26474532225653197665)
,p_name=>'P41_PAID_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26421125488408146032)
,p_item_source_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_prompt=>'Paid Amount:'
,p_source=>'PAID_AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26474532630811197665)
,p_name=>'P41_DUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(26421125488408146032)
,p_item_source_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_source=>'DUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26474533020342197666)
,p_name=>'P41_ACTION_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_item_source_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_source=>'ACTION_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26474533420430197666)
,p_name=>'P41_ACTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_item_source_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_source=>'ACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26568622025468976047)
,p_name=>'P41_GRAND_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26421125488408146032)
,p_item_source_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_source=>'GRAND_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27041412513284228124)
,p_name=>'P41_UNIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26474529539078197660)
,p_prompt=>'Unit:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28026912023704190034)
,p_name=>'P41_DIAPLAY_TOTAL_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26421125488408146032)
,p_prompt=>'Total Amount:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28026912690393190040)
,p_name=>'P41_DISPLY_GRANT_TOTAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26421125488408146032)
,p_prompt=>'Grant Total:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28026912728279190041)
,p_name=>'P41_DISPLAY_DUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26421125488408146032)
,p_prompt=>'Due:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(21352784098317583033)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026910428271190018)
,p_validation_name=>'invoice_auto_suggestion'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
' v_suggest_invoice  purchase_master.invoice%type;',
' v_invoice        purchase_master.invoice%type := :P41_INVOICE;',
'begin',
' select count(invoice)',
' into   v_invoice',
' from   purchase_master',
' where  invoice = :P41_INVOICE;',
'',
' select   max(to_number(to_char(invoice,''99,99,999''),''99,99,999'')) + 1',
' into     v_suggest_invoice',
' from     purchase_master;',
'',
'',
' if  v_invoice > 0 then ',
'   return ''This invoice "''|| :P41_INVOICE ||''" is existed. You clould add  "''|| v_suggest_invoice || ''" this invoice. Thanks'';',
' else',
'  return  null;',
' end if;',
'',
'',
'',
'exception',
' when others then',
'   null;',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_api.id(26474529881233197661)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026910532526190019)
,p_validation_name=>'total_amount_less_then_discount'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_total_amount           number := :P41_TOTAL_AMOUNT;',
'v_discount               number := :P41_DISCOUNT;',
'',
'',
'begin',
'',
'if nvl(v_total_amount,0) < nvl(v_discount,0) then ',
' return '' Discount shoul not be over Total Amount'';',
' else',
'  return null;',
'end if;',
'',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_api.id(26474531804733197665)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026910610647190020)
,p_validation_name=>'not_over_grant_total'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_total_amount           number := :P41_GRAND_TOTAL;',
'v_discount               number := :P41_PAID_AMOUNT;',
'',
'',
'begin',
'',
'if nvl(v_total_amount,0) < nvl(v_discount,0) then ',
' return '' Paid Amount  shoul not be over Grant Total'';',
' else',
'  return null;',
'end if;',
'',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_api.id(26474532225653197665)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28026911613145190030)
,p_validation_name=>'invoice_not_null'
,p_validation_sequence=>40
,p_validation=>'P41_INVOICE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Invoice should not be Blank. Please add invoice number. Thanks'
,p_associated_item=>wwv_flow_api.id(26474529881233197661)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26421126146523146039)
,p_name=>'apex_collection'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_PRICE'
,p_condition_element=>'P41_PRICE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26421126272926146040)
,p_event_id=>wwv_flow_api.id(26421126146523146039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' if not apex_collection.collection_exists(''PURCHASE'') then',
'        apex_collection.create_collection(''PURCHASE'');',
' end if;',
' ',
'apex_collection.add_member',
' (',
'   p_collection_name => ''PURCHASE'',',
'   p_c001 => :P41_ITEM_ID,',
'   p_c002 => :P41_QUANTITY,',
'   p_c003 => :P41_PRICE,',
'    p_c004 => :P41_UNIT',
' );',
'',
'END;',
''))
,p_attribute_02=>'P41_ITEM_ID,P41_QUANTITY,P41_PRICE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26421126365370146041)
,p_event_id=>wwv_flow_api.id(26421126146523146039)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_ITEM_ID,P41_QUANTITY,P41_PRICE,P41_UNIT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26421126934614146047)
,p_event_id=>wwv_flow_api.id(26421126146523146039)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(26421125592354146033)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26421127047471146048)
,p_event_id=>wwv_flow_api.id(26421126146523146039)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_TOTAL_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28026911573820190029)
,p_event_id=>wwv_flow_api.id(26421126146523146039)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_TOTAL_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'SELECT sum(C002*C003)Display',
'FROM   APEX_COLLECTIONS',
'WHERE  COLLECTION_NAME=''PURCHASE'';'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.4'
,p_default_workspace_id=>20952813001415487158
,p_default_application_id=>141546
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DDD451261366WORKSPACE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28026912553480190039)
,p_event_id=>wwv_flow_api.id(26421126146523146039)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_DIAPLAY_TOTAL_AMOUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'return nvl(:P41_TOTAL_AMOUNT,0) - 0;'))
,p_attribute_07=>'P41_TOTAL_AMOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26568617719693976004)
,p_name=>'clean_purchase_m'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26568617811591976005)
,p_event_id=>wwv_flow_api.id(26568617719693976004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_INVOICE,P41_ITEM_ID,P41_SUPPLIER_ID,P41_QUANTITY,P41_PURCHASE_DATE,P41_PRICE,P41_TOTAL_AMOUNT,P41_PAYMENT_MODE,P41_DISCOUNT,P41_PAID_AMOUNT,P41_DUE,P41_UNIT,P41_DIAPLAY_TOTAL_AMOUNT,P41_DISPLY_GRANT_TOTAL,P41_DISPLAY_DUE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26568620685952976033)
,p_name=>'Due_daynamic_ac'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_DISCOUNT,P41_PAID_AMOUNT,P41_PRICE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26568620705925976034)
,p_event_id=>wwv_flow_api.id(26568620685952976033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_DUE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN   (:P41_TOTAL_AMOUNT) - (:P41_DISCOUNT + :P41_PAID_AMOUNT);'
,p_attribute_07=>'P41_TOTAL_AMOUNT,P41_DISCOUNT,P41_PAID_AMOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27041412361310228122)
,p_name=>'calculation'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_TOTAL_AMOUNT,P41_DISCOUNT,P41_PAID_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27041412408137228123)
,p_event_id=>wwv_flow_api.id(27041412361310228122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
':P41_GRAND_TOTAL := nvl(:P41_TOTAL_AMOUNT,0) - nvl(:P41_DISCOUNT,0);',
' ',
':P41_DISPLY_GRANT_TOTAL := nvl(:P41_TOTAL_AMOUNT,0) - nvl(:P41_DISCOUNT,0);',
'',
':P41_DUE := nvl(:P41_TOTAL_AMOUNT,0) - nvl(:P41_DISCOUNT,0) - nvl(:P41_PAID_AMOUNT,0);',
'',
':P41_DISPLAY_DUE := nvl(:P41_TOTAL_AMOUNT,0) - nvl(:P41_DISCOUNT,0) - nvl(:P41_PAID_AMOUNT,0);',
'',
'end;'))
,p_attribute_02=>'P41_TOTAL_AMOUNT,P41_DISCOUNT,P41_GRAND_TOTAL,P41_PAID_AMOUNT,P41_DUE'
,p_attribute_03=>'P41_GRAND_TOTAL,P41_DUE,P41_DISPLY_GRANT_TOTAL,P41_DISPLAY_DUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27041412765435228126)
,p_name=>'unit_auto_'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_ITEM_ID'
,p_condition_element=>'P41_ITEM_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27041412826204228127)
,p_event_id=>wwv_flow_api.id(27041412765435228126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'begin',
'select UNIT_OF_QUANTITY',
'into   :P41_UNIT',
'from   PURCHASE_ITEM',
'where  PURCHASE_ITEM_ID = :P41_ITEM_ID;',
'',
'',
'end;'))
,p_attribute_02=>'P41_ITEM_ID'
,p_attribute_03=>'P41_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27041413012449228129)
,p_name=>'auto_date'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_INVOICE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27041413184682228130)
,p_event_id=>wwv_flow_api.id(27041413012449228129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P41_PURCHASE_DATE := sysdate;',
'',
'end;'))
,p_attribute_03=>'P41_PURCHASE_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27675702588956093020)
,p_name=>'current_due_region_refresh'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_SUPPLIER_ID'
,p_condition_element=>'P41_SUPPLIER_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27675702601972093021)
,p_event_id=>wwv_flow_api.id(27675702588956093020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(27675700761040093002)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26474539266343197677)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(26474529539078197660)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Purchase_master'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26568617442189976001)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'purchae_detail_value_pa_pro'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' if not apex_collection.collection_exists(''PURCHASE'') then',
'        apex_collection.create_collection(''PURCHASE'');',
' end if;',
' ',
'   insert into PURCHASE_DETAIL(INVOICE,PURCHASE_ITEM_ID,QUANTITY,UNIT_PRICE,ACTION_USER,ACTION_DATE)',
'   select :P41_INVOICE,C001,C002,C003,V(''APP_USER''),SYSDATE',
'   FROM   APEX_COLLECTIONS',
'   WHERE  COLLECTION_NAME=''PURCHASE'';',
'     commit;',
' apex_collection.truncate_collection(p_collection_name => ''PURCHASE'');',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26474538432333197676)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26474538858141197676)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(26474529539078197660)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Purchase_master'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26568620829689976035)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre_inser_ac_date_user'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
':P41_ACTION_DATE :=sysdate;',
':P41_ACTION_USER := v(''APP_USER'');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
