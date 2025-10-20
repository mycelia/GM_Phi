//Scripts that run at the beginning of the game



function initflow_player_variables() {
	player_state_init( E_PLAYER_STATE.IDLE );

	global.facing       = 0; //0 = up, 1 = right, 2 = down, 3 = left
	global.player_speed = 8;


}

function initflow_globals(){
	
	//CHANGE THESE ONES!
	#region files config
		global.default_cbox = "test.yarn" //If no yarn file is specified, GameMaker will look here for nodes.
		ChatterboxLoadFromFile(global.default_cbox);
		//You'll need to run ChatterboxLoadFromFile for every yarn file you want to use.
	#endregion
	
	#region UI config
		global.FULLSCREEN	= false;

		global.displayW		= display_get_width(); //Size of the actual monitor (useful for fullscreen)
		global.displayH		= display_get_height();
		
	
		global.windowW		= 1280; // Size the game window is drawn at
		global.windowH		= 720;
	
		global.gameW		= global.FULLSCREEN ? global.displayW : global.windowW; //Important for calculating GUI size when in fullscreen
		global.gameH		= global.FULLSCREEN ? global.displayH : global.windowH;
		
		
		global.guiW			= global.gameW;
		global.guiH			= global.gameH;
		
		global.gui_xScale = global.guiW / global.windowW;
		global.gui_yScale = global.guiH / global.windowH;
		
	//dibox = dialogue box. dbox looks too much like bbox 
			
		global.dibox_sprite = sTextBox; // Replace these with your own sprites
		global.nbox_sprite = sNameBox;
		
		//Where to draw the dibox. x =  left, y = top
		global.dibox_x = 0; 
		global.dibox_y = global.windowH-sprite_get_height(global.dibox_sprite);
		
		global.dibox_pos = sprite_get_pos(global.dibox_sprite, global.dibox_x,global.dibox_y,1,1);
		
		global.nbox_x = 0;
		global.nbox_y = global.dibox_pos[1]-sprite_get_height(global.nbox_sprite);
		
		 
		
		//How much padding to put between the edges of the dibox and the actual text
		//By default it's 10% of both the width and height
		global.dibox_padding_x = global.dibox_pos[4]/10;
		global.dibox_padding_y = global.dibox_pos[5]/10;
		
		global.nbox_padding_x = sprite_get_width(global.nbox_sprite)/10;
		global.nbox_padding_y = sprite_get_width(global.nbox_sprite)/10;

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
