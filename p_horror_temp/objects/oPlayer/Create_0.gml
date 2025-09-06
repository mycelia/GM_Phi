//NOTE: Here lies the code that worked, mostly
vx = 0;
vy = 0;
movable = true;
global.player_facing_up = false;
//Can move around, thus needs to have her position saved
global.player_speed = 6;
//timer = 0;

player_state_init( E_PLAYER_STATE.IDLE );
//global.facing = 2; //0 = up, 1 = right, 2 = down, 3 = left
talking = false;


image_speed = 0;
cvar_set("playerSpriteSpeed", 0);
push_distance = 5;

walk_speed=3;
walk_acceleration=walk_speed*.1;
against_wall=0;

timer=0;

movement_direction=-1;
move_speed=0;
friction_enabled=false;

/*
//Push stuff
is_pushed=false;
push_speed=4;
push_slowdown=.25;
push_direction=-1;
*/
input_queue_direction = -1;
input_queue = ds_list_create();

/*jumping = false;


//Texel
tex_h = (1/sprite_height)*image_yscale;
tex_w = (1/sprite_width)*image_xscale;

