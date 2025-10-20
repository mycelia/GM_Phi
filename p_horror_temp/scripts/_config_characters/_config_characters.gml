global.charaList = {};

function define_chara(_name) constructor {
	
	name = _name;
	//defSprite = _defsprite;
	
	moveSprite = function(){
		
	}
	
}

function initflow_characters(){
	//Here's where we're gonna set up our characters.
	
	//For each character, simply copy and paste the following line, substituting in the character's name:
	
	global.charaList.Freya = new define_chara("Freya");
	
	//Examples:
	global.charaList.Owen = new define_chara("Owen");
	global.charaList.Lucas = new define_chara("Lucas");
	
	//Sprites are automatically pulled from the asset list, using the naming format:
	// sNameEmote
	//so for example
	//Freya[Concern]: I am concerned
	//will display sFreyaConcern, if it exists
	//If it doesn't, it'll instead display sFreyaDef, the default sprite
	
	//!!!	Make sure you include a Def sprite for each character	!!!
	
	//You can add variables to a character using struct access notation.
	//For example, sometimes you might want a display name that's different from the character's name
	//In that case, you could do:
	
	global.charaList[$ "Owen"].displayName = "???";
	
}