// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_text(_node,_file){
	
	
	with instance_create_depth(0,0,0,oText){
		chatterbox = ChatterboxCreate(_file);
		// Initialise Chatterbox by jumping to a node ("Start")
		ChatterboxJump(chatterbox,_node);
		// Get Content from Chatterbox
		refresh_text_elements(); 
	}
}