function draw_input_gui(){
	//Takes a sprite and coordinates, and prints a string under it
	sprite = argument[0];
	_x = argument[1];
	_y = argument[2];
	_input = argument[3];
	_position = (argument_count > 4)? argument[4] : "bottom";
	
	beebox = get_bbox_full(sprite);
	
	dimensions = calc_sprite_gui(sprite,0,_x,_y);
	_spriteW = dimensions[4];
	_spriteH = dimensions[5];
	//frankensteining all my functions together and praying
	//you can watch me get better at programming in realish time!
	
	_scrib = scribble("[fntLemiMSDF]"+global.text_scale_15+string(_input)).blend(c_white,1).msdf_border(c_black,1); 
	
	switch _position{
		case "bottom":
		_textX = _x+(_spriteW/2);
		_textY = _y + _spriteH;
		_scrib.align(fa_center,fa_top);
		break;
		
		case "right":
		_textX = _x+_spriteW;
		_textY = _y;
		_scrib.align(fa_left,fa_top);
		break;
		
		case "left":
		_textX = _x;
		_textY = _y;
		_scrib.align(fa_right,fa_top);
		break;
		
		case "top":
		_textX = _x+(_spriteW/2);
		_textY = _y;
		_scrib.align(fa_center,fa_top);
		break;
		
		default:
		_textX = _x;
		_textY = _y + _spriteH;
		_scrib.align(fa_left,fa_top);
		break;
		
	}
	
	_scrib.draw(_textX,_textY);
}