#include "SpaceWarsStd.h"

#include "../GCC4/GameCode4/GameCode.h"
#include "../GCC4/Graphics3D/SceneNodes.h"
#include "../GCC4/EventManager/EventManager.h"
#include "../GCC4/Physics/PhysicsEventListener.h"

#include "SpaceshipController.h"
#include "SpaceshipEvents.h"

const float ACTOR_ACCELERATION = 3.5f * 4.0f;
const float ACTOR_ANGULAR_ACCELERATION = 15.0f;

SpaceshipController::SpaceshipController(shared_ptr<SceneNode> object)
: m_object(object)
{
	memset(m_bKey, 0x00, sizeof(m_bKey));
}

bool SpaceshipController::VOnPointerButtonDown(const Point &mousePos, const int radius, const std::string &buttonName)
{
	if (buttonName != "PointerLeft")
		return false;
	ActorId actorId = m_object->VGet()->ActorId();
	GCC_ASSERT(actorId != INVALID_ACTOR_ID && _T("The spaceship controller isn't attached to a valid actor!"));
    shared_ptr<EvtData_Fire_Weapon> pFireEvent(GCC_NEW EvtData_Fire_Weapon(actorId));
    IEventManager::Get()->VQueueEvent(pFireEvent);
	return true;
}

void SpaceshipController::OnUpdate(DWORD const deltaMilliseconds)
{
}

bool SpaceshipController::VOnKeyDown(const BYTE c)
{
	// update the key table
	m_bKey[c] = true;

	// send a thrust event if necessary
	if (c == 'W' || c == 'S')
	{
		const ActorId actorId = m_object->VGet()->ActorId();
		shared_ptr<EvtData_StartThrust> pEvent(GCC_NEW EvtData_StartThrust(actorId, (c == 'W' ? ACTOR_ACCELERATION : (-ACTOR_ACCELERATION))));
		IEventManager::Get()->VQueueEvent(pEvent);
	}

	// send a steer event if necessary
	if (c == 'A' || c == 'D')
	{
		const ActorId actorId = m_object->VGet()->ActorId();
		shared_ptr<EvtData_StartSteer> pEvent(GCC_NEW EvtData_StartSteer(actorId, (c == 'D' ? ACTOR_ANGULAR_ACCELERATION : (-ACTOR_ANGULAR_ACCELERATION))));
		IEventManager::Get()->VQueueEvent(pEvent);
	}
	//32 == space
	if (c == 32 || c == 'X') {
		const ActorId actorId = m_object->VGet()->ActorId();
		shared_ptr<EvtData_StartThrust> pEvent(GCC_NEW EvtData_StartThrust(actorId, (c == 32 ? ACTOR_ANGULAR_ACCELERATION : (-ACTOR_ANGULAR_ACCELERATION))));
		IEventManager::Get()->VQueueEvent(pEvent);
	}

    return true;
}

bool SpaceshipController::VOnKeyUp(const BYTE c)
{
    // update the key table
    m_bKey[c] = false;

    // send an end thrust event if necessary
    if (c == 'W' || c == 'S')
    {
        const ActorId actorId = m_object->VGet()->ActorId();
        shared_ptr<EvtData_EndThrust> pEvent(GCC_NEW EvtData_EndThrust(actorId));
        IEventManager::Get()->VQueueEvent(pEvent);
    }

    // send an end steer event if necessary
    if (c == 'A' || c == 'D')
    {
        const ActorId actorId = m_object->VGet()->ActorId();
        shared_ptr<EvtData_EndSteer> pEvent(GCC_NEW EvtData_EndSteer(actorId));
        IEventManager::Get()->VQueueEvent(pEvent);
    }

    return true;
}
