function macros() {
#region Build Settings

#macro DEV		true
#macro DEMO     false
#macro TIMEOUT  (DEMO && !DEV && true) //Two minute reset timer
#macro WEB		false

#macro USE_ENCRYPTED_TEXT  (!DEV && true)
	// "Help! All my text is broken!" or "dialogue_parse() is throwing weird errors!"
	// 
	// You probably need to update the encrypted text files.
	// Make sure the current source plaintext .txt files are up to date, then run the game in DEV mode.
	// Press F1 to open the dev menu and press the [Export encrypted text] button.
	// Once the system has finished encrypting files, it'll open a browser window showing you where the files are stored.
	// Add these .dat files as included files using GMS2's IDE. They go in the "data" folder.
	// Turn off DEV mode and run the game again - the errors will disappear and the text will have been updated.

#macro VERSION        "1.1"
#macro BUILD_STRING   (VERSION + (DEMO? " DEMO\n" : "\n") + date_datetime_string(GM_build_date))

#macro BOOT_LANGUAGE  "en"

#endregion



#region Config

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

#macro JUJU                   (DEV && file_exists("juju"))
#macro ELS                    (DEV && file_exists("els"))
#macro DEBUG                  (DEV && global.__debug)
#macro DEV_MENU               (DEV && global.__dev_menu)
#macro WALK_THROUGH_WALLS     (DEBUG && global.__walk_through_walls)
#macro SEE_HITBOXES           (DEBUG && global.__see_hitboxes)
#macro INSTANT_FADES          (DEBUG && global.__instant_fades)
#macro SENTINEL_DODGE         (DEBUG && global.__sentinel_dodge)
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
	//Sentinel stuff
#macro STATE_PATROL      "patrol"
#macro STATE_RETURN      "return to patrol"
#macro STATE_CAUGHT      "caught"
#macro STATE_GUARDING    "guarding"
#macro STATE_RETURN_SAFE "return to safe"
#macro STATE_SAFE        "safe"

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
