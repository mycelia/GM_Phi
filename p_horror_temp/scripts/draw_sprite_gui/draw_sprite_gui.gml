function draw_sprite_gui(argument0, argument1, argument2, argument3, argument4) {

	//Sprite, frame, x, y, alpha (transparency)
	var _sprite = argument0;
	var _subimg = argument1;
	var _x = argument2;
	var _y = argument3;
	if argument4 == undefined {
		var _a = 1 }
	else {
		var _a = argument4;
	}
	//show_debug_message(string(_x) + "," + string(_y));
/*
Currently not included, but if you have GUI sprites (e.g. game logo) in multiple languages you could use a variation on this to make sure the right one is showing
	if global.language = "cn"{
		var _sprite_string = string(sprite_get_name(_sprite) + "_cn");
		_sprite = asset_get_index(_sprite_string);
		if !sprite_exists(_sprite){
				show_error( "draw_sprite_gui: Cannot find CN sprite \"" + _sprite_string + "\"", false );
		}
	}
*/
	

	if sprite_exists(_sprite) {
		draw_sprite_ext(_sprite,_subimg,_x,_y,global.gui_xScale,global.gui_yScale,0,c_white,_a);
		return sprite_get_pos(_sprite,_x,_y,global.gui_xScale,global.gui_yScale);
	} else {
		show_debug_message("Could not find sprite in draw_sprite_gui.");	
	return undefined;
	}


}

function calc_sprite_gui(argument0, argument1, argument2, argument3, argument4) {
	
	//For when you need the coordinates but don't want to draw the box

	//Sprite, frame, x, y, alpha (transparency)
	var _sprite = argument0;
	var _subimg = argument1;
	var _x = argument2;
	var _y = argument3;
	if argument4 == undefined {
		var _a = 1 }
	else {
		var _a = argument4;
	}

	if sprite_exists(_sprite) {
		return sprite_get_pos(_sprite,_x,_y,global.gui_xScale,global.gui_yScale);
	} else {
		show_debug_message("Could not find sprite in draw_sprite_gui.");	
	return undefined;
	}


}