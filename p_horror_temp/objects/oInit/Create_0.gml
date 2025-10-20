//Load your file.
//ChatterboxLoadFromFile("chatterboxtut.yarn"); //or whatever you called yours

fakeInput = 0;

initflow_player_variables();
initflow_globals();
initflow_characters();



ChatterboxVariableDefault("interact","LMB");
ChatterboxVariableDefault("interactSprite","mouse_left_outline");

//input_hotswap_params_set(cvar_update_binding);

if !instance_exists(oPlayer) instance_create_depth(100,100,VERY_NEGATIVE,oPlayer);