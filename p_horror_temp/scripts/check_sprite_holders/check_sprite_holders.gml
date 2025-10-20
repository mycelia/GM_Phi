function check_sprite_holders(_name){
	
	//Check to see if a sprite holder with this name exists
	//If you want to duplicate a character, you'll need to give it a slightly different speaker name
	//But they can have the same display name, so it's fine


	for (var i = 0; i < instance_number(oDiSpriteTemp); ++i;)
		{
			if instance_find(oDiSpriteTemp,i).speakerName = _name
			{
				return instance_find(oDiSpriteTemp,i);
			
			}
		}
	return -1;
}

function update_sprite_holder(){
	
	
	
}