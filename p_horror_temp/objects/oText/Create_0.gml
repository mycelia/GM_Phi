
// Create Chatterbox
current_text = undefined;

hovering = -1;

tbox = calc_sprite_gui(global.dibox_sprite,0,global.dibox_x,global.dibox_y);
nbox = calc_sprite_gui(global.nbox_sprite,0,global.nbox_x,global.nbox_y);
speaker = "";
depth = VERY_POSITIVE; //Make sure it draws over everything else

currently_on_screen = [];