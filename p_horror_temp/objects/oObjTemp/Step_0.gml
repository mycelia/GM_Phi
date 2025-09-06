if ( find_nearest_talker(10, true) && InputReleased(INPUT_VERB.ACTION) ) {
//Check if the player is nearby and is trying to initiate dialogue.
//Uses Released instead of Pressed because otherwise dialogue triggers infinitely.
	if ( can_start_dialogue()) {
		//If we can start dialogue, do so.
		create_text(dialogue_node)
	}
	
	
}