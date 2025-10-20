function macros() {
#region Build Settings


#macro VERSION        "0.1"
#macro BUILD_STRING   (VERSION + (DEMO? " DEMO\n" : "\n") + date_datetime_string(GM_build_date))

#macro BOOT_LANGUAGE  "en"

#endregion



#region NPC Config
//This stuff isn't in the template right now. Hopefully in the future.

#macro NPC_WALK_SPEED              3
#macro NPC_WALK_ACCEL             (0.1*NPC_WALK_SPEED)
#macro NPC_WALK_ANIM_SPEED         0.1
#macro NPC_IGNORE_COLLISION_CHECKS true
#macro NPC_SIMPLIFY_PATHS          true

#macro MAX_NPCS 12

#macro PATHING_RESOLUTION         12
#macro PATHING_FREQUENCY           5
#macro PATHING_EXCLUSION_SIZE     22
#macro PATHING_MP_CHECK_STEP_SIZE  5
#macro PATHING_DISTANCE_TO_PLAYER 36
#macro PATHING_SNAPPING_DISTANCE  walk_speed

#endregion


#region Dev flags

#macro DEBUG                  (DEV && global.__debug)
#macro DEV_MENU               (DEV && global.__dev_menu)
#macro WALK_THROUGH_WALLS     (DEBUG && global.__walk_through_walls)
#macro SEE_HITBOXES           (DEBUG && global.__see_hitboxes)
#macro INSTANT_FADES          (DEBUG && global.__instant_fades)
#macro SEE_PATHFINDING        (DEBUG && global.__see_pathfinding)
#macro LIGHTING               (!DEBUG || global.__lighting)

#endregion



#region Static Definitions

#macro C_SLIGHTLY_BLUE merge_colour( c_white, c_blue, 0.2 )

	enum E_FACING
	{
	    RIGHT =   0,
	    UP    =  90,
	    LEFT  = 180,
	    DOWN  = 270
	}

	//We're using macros for states rather than enums to make serialisation easier to debug
#macro STATE_CUTSCENE   "cutscene"
#macro STATE_FOLLOW     "follow"
#macro STATE_IDLE       "idle"
#macro STATE_LYING_DOWN "lying down"
#macro STATE_DEAD		"dead"


	enum E_PLAYER_STATE
	{
	    IDLE,
	    MOVING,
	    CUTSCENE,
	    MENU,
	    PUSHED
	}

	enum E_DEV_MENU
	{
	    MAIN,
	    SOUNDTEST,
	    cvarS,
	    TELEPORTER
	}

#macro VERY_NEGATIVE -9999999
#macro VERY_POSITIVE  9999999





#endregion

#region SETTINGS
#macro GORE true
#macro SOUND true
#macro MUSIC true
#endregion

	//todo: turn these back on


}
