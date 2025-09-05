//Scripts that run at the beginning of the game

function initflow_player_variables() {
	player_state_init( E_PLAYER_STATE.IDLE );

	global.facing       = 0; //0 = up, 1 = right, 2 = down, 3 = left
	global.player_speed = 8;


}

function initflow_globals(){
	
	#region GML globals
	global.cutscene_is_open = false;
	
	#endregion
	
	
	#region chatterbox variables/cvars
	
	
	#endregion
	
	
}
