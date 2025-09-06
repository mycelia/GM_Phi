//Scripts that run at the beginning of the game

function initflow_player_variables() {
	player_state_init( E_PLAYER_STATE.IDLE );

	global.facing       = 0; //0 = up, 1 = right, 2 = down, 3 = left
	global.player_speed = 8;


}

function initflow_globals(){
	
	//CHANGE THESE ONES!
	#region config
		global.default_cbox = "test.yarn" //If no yarn file is specified, GameMaker will look here for nodes.
		ChatterboxLoadFromFile(global.default_cbox);
		//You'll need to run ChatterboxLoadFromFile for every yarn file you want to use.
	#endregion
	
	//DONT CHANGE THESE ONES
	
	#region GML globals
		global.cutscene_is_open = false;
		global.dialogue_is_open = false;
	#endregion
	
	
	#region chatterbox variables/cvars
	ChatterboxVariableDefault("playerSpriteSpeed",8)
	ChatterboxVariableDefault("playerSprite","spr_player_down");
	
	#endregion
	
	
}
