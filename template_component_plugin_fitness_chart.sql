prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>62743360088071003057
,p_default_application_id=>235647
,p_default_id_offset=>0
,p_default_owner=>'WKSP_KMENG'
);
end;
/
 
prompt APPLICATION 235647 - KScope25 - APEX Mobile Template Components
--
-- Application Export:
--   Application:     235647
--   Name:            KScope25 - APEX Mobile Template Components
--   Date and Time:   15:40 Sunday June 15, 2025
--   Exported By:     KRISTHAL.MENG@REGION10.ORG
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 53566015121168428350
--   Manifest End
--   Version:         24.2.5
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/fitness_chart
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(53566015121168428350)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'FITNESS_CHART'
,p_display_name=>'FITNESS-CHART'
,p_supported_component_types=>'PARTIAL'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="activity-rings">',
'<div class="rings">',
'    <svg viewBox="0 0 36 36" class="ring ring-move">',
'      <path class="bg" d="M18 2.0845',
'        a 15.9155 15.9155 0 0 1 0 31.831',
'        a 15.9155 15.9155 0 0 1 0 -31.831"/>',
'      <path class="progress" stroke-dasharray="#MOVE_PROGRESS#, 100" d="M18 2.0845',
'        a 15.9155 15.9155 0 0 1 0 31.831',
'        a 15.9155 15.9155 0 0 1 0 -31.831"/>',
'    </svg>',
'    <svg viewBox="0 0 36 36" class="ring ring-exercise">',
'      <path class="bg" d="M18 4.0845',
'        a 13.9155 13.9155 0 0 1 0 27.831',
'        a 13.9155 13.9155 0 0 1 0 -27.831"/>',
'      <path class="progress" stroke-dasharray="#EXERCISE_PROGRESS#, 100" d="M18 4.0845',
'        a 13.9155 13.9155 0 0 1 0 27.831',
'        a 13.9155 13.9155 0 0 1 0 -27.831"/>',
'    </svg>',
'    <svg viewBox="0 0 36 36" class="ring ring-stand">',
'      <path class="bg" d="M18 6.0845',
'        a 11.9155 11.9155 0 0 1 0 23.831',
'        a 11.9155 11.9155 0 0 1 0 -23.831"/>',
'      <path class="progress" stroke-dasharray="#STAND_PROGRESS#, 100" d="M18 6.0845',
'        a 11.9155 11.9155 0 0 1 0 23.831',
'        a 11.9155 11.9155 0 0 1 0 -23.831"/>',
'    </svg>',
'  </div>',
'  <div class="stats">',
'    <div><strong>Move</strong><br><span class="move-text">#MOVE_CAL#/700 CAL</span></div>',
'    <div><strong>Exercise</strong><br><span class="exercise-text">#EXERCISE_MIN#/45 MIN</span></div>',
'    <div><strong>Stand</strong><br><span class="stand-text">#STAND_HOURS#/12 HRS</span></div>',
'  </div>',
'</div>'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_version_scn=>15630432043315
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(53566015476603428373)
,p_plugin_id=>wwv_flow_imp.id(53566015121168428350)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'EXERCISE_MIN'
,p_prompt=>'Exercise Min'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(53566015805421428374)
,p_plugin_id=>wwv_flow_imp.id(53566015121168428350)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'EXERCISE_PROGRESS'
,p_prompt=>'Exercise Progress'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(53566016294400428374)
,p_plugin_id=>wwv_flow_imp.id(53566015121168428350)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'MOVE_CAL'
,p_prompt=>'Move Cal'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(53566016638110428375)
,p_plugin_id=>wwv_flow_imp.id(53566015121168428350)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'MOVE_PROGRESS'
,p_prompt=>'Move Progress'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(53566017051306428375)
,p_plugin_id=>wwv_flow_imp.id(53566015121168428350)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'STAND_HOURS'
,p_prompt=>'Stand Hours'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(53566017440952428376)
,p_plugin_id=>wwv_flow_imp.id(53566015121168428350)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'STAND_PROGRESS'
,p_prompt=>'Stand Progress'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
