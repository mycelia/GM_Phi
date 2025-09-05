// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cvar_update_binding(){
	var intBinding = input_binding_get_name(input_binding_get("interact"))
	ChatterboxVariableSet("interact",intBinding);
	ChatterboxVariableSet("interactSprite",get_binding_icon("interact"));
}