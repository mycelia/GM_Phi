///Scripts that check if other scripts can run

function can_start_dialogue(){
	
	if global.dialogue_is_open return false;
	return true;
}

function cutscene_get_state(){
	return global.cutscene_is_open;
}