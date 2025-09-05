//this is the world's simplest state engine


/// @param state
function player_state_init(argument0) {

	global.player_state          = argument0;
	global.player_state_previous = global.player_state;


}


/// @param state
function player_state_set(argument0) {

	global.player_state_previous = global.player_state;
	global.player_state = argument0;


}

function player_state_new() {
	return (global.player_state != global.player_state_previous);


}


function player_state_clear_previous() {
	global.player_state_previous = global.player_state;


}
