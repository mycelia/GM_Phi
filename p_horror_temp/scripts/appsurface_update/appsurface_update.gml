function appsurface_update(_w,_h) {
	
	//This function makes sure all the display variables are set correctly when switching between fullscreen and windowed mode
	global.gameW = _w;
	global.gameH = _h;
	surface_resize(application_surface,_w,_h);
	global.guiW = _w;
	global.guiH = _h;
	global.gui_xScale = global.guiW / global.windowW;
	global.gui_yScale = global.guiH / global.windowH;
	
	//dialog box positions


		global.dibox_pos = sprite_get_pos(global.dibox_sprite, global.dibox_x,global.dibox_y,1,1);
		global.dibox_padding_x = global.dibox_pos[4]/10;
		global.dibox_padding_y = global.dibox_pos[5]/10;
		global.nbox_padding_x = (sprite_get_width(global.nbox_sprite)*global.gui_xScale)/10;
		global.nbox_padding_y = (sprite_get_height(global.nbox_sprite)*global.gui_yScale)/10;



	display_set_gui_size(_w,_h);
	window_set_size(_w,_h);
}	