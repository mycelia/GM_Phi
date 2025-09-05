/// @description Insert description here
// You can write your code in this editor


if debug_active {
	//I was having some issues with Input, so this code displays where the various mouse-position-getters think the mouse currently is
	//I'm leaving it here for posterity. Always useful to know where your mouse is!
	draw_set_color(c_white);
	draw_text(1,1,string(input_mouse_x())+","+string(input_mouse_y()));
	draw_set_color(c_red);
	draw_text(1,20,string(mouse_x)+","+string(mouse_y));

	draw_set_color(c_blue);
	draw_text(1,40,string(input_cursor_x())+","+string(input_cursor_y()));

}