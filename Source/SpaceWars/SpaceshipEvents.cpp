#include "SpaceWarsStd.h"
#include "SpaceshipEvents.h"
#include "../GCC4/LUAScripting/LuaStateManager.h"


const EventType EvtData_Fire_Weapon::sk_EventType(0x1b15b6a7);
const EventType EvtData_StartThrust::sk_EventType(0x1d62d48c);
const EventType EvtData_EndThrust::sk_EventType(0xe60f88a4);
const EventType EvtData_StartSteer::sk_EventType(0xf0b5b4fd);
const EventType EvtData_EndSteer::sk_EventType(0x176645ef);
//const EventType EvtData_PlaySound::sk_EventType(0x3d8118ee);
const EventType EvtData_Gameplay_UI_Update::sk_EventType(0x1002ded2);
const EventType EvtData_Set_Controlled_Actor::sk_EventType(0xbe5e3388);
const EventType EvtData_ScriptEventTest_ToLua::sk_EventType(0x56cff2bc);
const EventType EvtData_ScriptEventTest_FromLua::sk_EventType(0x53fbab61);
const EventType EvtData_Destroy_Player::sk_EventType(0x40885ba0);


bool EvtData_Gameplay_UI_Update::VBuildEventFromScript(void)
{
    if (m_eventData.IsString())
    {
        m_gameplayUiString = m_eventData.GetString();
        return true;
    }

    return false;
}

bool EvtData_Set_Controlled_Actor::VBuildEventFromScript(void)
{
    if (m_eventData.IsInteger())
    {
        m_id = m_eventData.GetInteger();
        return true;
    }

    return false;
}

void EvtData_ScriptEventTest_ToLua::VBuildEventData(void)
{
    m_eventData.AssignNumber(LuaStateManager::Get()->GetLuaState(), m_num);
}

bool EvtData_ScriptEventTest_FromLua::VBuildEventFromScript(void)
{
    if (m_eventData.IsInteger())
    {
        m_num = m_eventData.GetInteger();
        return true;
    }

    return false;
}

void EvtData_Fire_Weapon::VBuildEventData(void)
{
	m_eventData.AssignNewTable(LuaStateManager::Get()->GetLuaState());
	m_eventData.SetInteger("id", m_id);
	m_eventData.SetInteger("roofus", 0);
}

bool EvtData_Destroy_Player::VBuildEventFromScript(void)
{
	return true;
}

void RegisterSpaceshipScriptEvents(void)
{
    REGISTER_SCRIPT_EVENT(EvtData_Fire_Weapon, EvtData_Fire_Weapon::sk_EventType);
    REGISTER_SCRIPT_EVENT(EvtData_Gameplay_UI_Update, EvtData_Gameplay_UI_Update::sk_EventType);
    REGISTER_SCRIPT_EVENT(EvtData_Set_Controlled_Actor, EvtData_Set_Controlled_Actor::sk_EventType);

    REGISTER_SCRIPT_EVENT(EvtData_StartThrust, EvtData_StartThrust::sk_EventType);
    REGISTER_SCRIPT_EVENT(EvtData_EndThrust, EvtData_EndThrust::sk_EventType);
    REGISTER_SCRIPT_EVENT(EvtData_StartSteer, EvtData_StartSteer::sk_EventType);
    REGISTER_SCRIPT_EVENT(EvtData_EndSteer, EvtData_EndSteer::sk_EventType);
	REGISTER_SCRIPT_EVENT(EvtData_Destroy_Player, EvtData_Destroy_Player::sk_EventType);

    // tests
    REGISTER_SCRIPT_EVENT(EvtData_ScriptEventTest_ToLua, EvtData_ScriptEventTest_ToLua::sk_EventType);
    REGISTER_SCRIPT_EVENT(EvtData_ScriptEventTest_FromLua, EvtData_ScriptEventTest_FromLua::sk_EventType);
}