function sprite_get_pos(_sprite,_x,_y,_xscale,_yscale){
	//Custom function that gives an array with both the size (scaled if necessary) and height/width
	//Note that this is not the bbox, it's the real size of the sprite
	//For the bbox, see below.
	sprite_w = sprite_get_width(_sprite)*_xscale;
	sprite_h = sprite_get_height(_sprite)*_yscale;
	var _array = [_x,_y,_x+sprite_w,_y+sprite_h,sprite_w,sprite_h];
	/*
	0,1 = x,y
	2,3 = x2,y2
	4,5 = width, height
	*/
	//show_debug_message(_array);
	return _array;
}

function sprite_get_bbox_ext(_sprite,_x,_y,_xscale,_yscale){
	//For when the bbox != the width and height...
	
	var _b = sprite_get_bbox_bottom(_sprite)*_yscale;
	var _l = sprite_get_bbox_left(_sprite)*_xscale;
	var _t = sprite_get_bbox_top(_sprite)*_yscale;
	var _r = sprite_get_bbox_right(_sprite)*_xscale;
	
	var _array = [_l,_t,_r,_b];
	
	return _array;
	
}