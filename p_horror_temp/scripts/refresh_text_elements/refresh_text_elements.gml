// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function refresh_text_elements(){
	
	text_elements = [];
	var _x = tbox[0] + global.dibox_padding_x;
	var _y = tbox[1] + global.dibox_padding_y;
	
	var _padding = 30;
	
	var _i = 0;
	repeat(ChatterboxGetContentCount(chatterbox))
		{
			//Split up the content string and find our speaker
			
			
			var _speaker = ChatterboxGetContentSpeaker(chatterbox,_i)
			var _emote = ChatterboxGetContentSpeakerData(chatterbox,_i)
			var _content = ChatterboxGetContentSpeech(chatterbox,_i)
			var _line_text = _content;
			
			if _emote == "" { _emote = "Def"; }
			
			var speakerStruct = struct_get(global.charaList,_speaker);
			
			//If the character has a different display name than their actual name, use that
			//otherwise set the display name to the character's name
			if struct_exists(speakerStruct,"displayName"){
				speaker = speakerStruct.displayName;
			} else speaker = _speaker;
			
			#region speaker handling
			//Attempt to build a sprite name using the format s + speaker name + emote
			//e.g. Freya[Smile] becomes sFreyaSmile
			var _portrait_name = "s" + _speaker + _emote;
			
			var _speakerSprite = asset_get_index(_portrait_name);
			
			//TODO: add position checks
			
			var _spriteHolder = check_sprite_holders(_speaker);
			
			if _spriteHolder = -1{
				with instance_create_depth(0,0,0,oDiSpriteTemp){
					speakerName = _speaker;
					speakerSprite = _speakerSprite;
					show_debug_message("Hello, my name is " + speakerName);
					show_debug_message(sprite_get_name(_speakerSprite));
					show_debug_message(sprite_get_name(speakerSprite));
				}
			} else {
					with _spriteHolder{
						speakerSprite = _speakerSprite;
					}
				
			}
			
			#endregion
			
			oText.current_text = _line_text;
		
			var _element = scribble(_line_text).blend(c_white);
		
			//How fast we want the text to type in.
			var _typist = scribble_typist().in(3,5);
			
			array_push(text_elements,[_x,_y,_element,_typist]);
			
			 //Move down a bit to make each content string look like a paragraph
			_y += _element.get_height() + _padding;
			++_i;
		
		}
		

		if (ChatterboxIsWaiting(chatterbox))
			{
				
				//If we're in a waiting state (no options) then we should prompt the user to continue
				_x += 1;
		
				_y += _padding;
				
				var _element = scribble("[region,continue](continue)[/region]").blend(c_white);
				var _typist = scribble_typist().in(8,5);
				
				array_push(text_elements,[_x,_y,_element,_typist]);
        
			 }
				else
			 {
				#region Here is where option text is generated
				
				_number = ChatterboxGetOptionCount(chatterbox);
				var _i = 0;
				repeat(_number) {
					var thisNumber = string( _i+1);
					var _string = "[region,choice" + thisNumber + "]" + thisNumber + ": " + ChatterboxGetOption(chatterbox, _i) + "[/region]";
					var _element = scribble(_string);
					var _typist = scribble_typist().in(8,5);
					
					array_push(text_elements,[_x,_y,_element,_typist]);
			
		            //Move down a bit to visually separate each option
					if (_number >= 2) {
						_y = _y + _padding;
					} else {
						//if there's only one we shouldn't need to do anything here.
					}
		            ++_i;
				}
				
				#endregion
			 }
		
}