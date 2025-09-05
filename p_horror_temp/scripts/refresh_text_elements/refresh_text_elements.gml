// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function refresh_text_elements(){
	
	text_elements = [];
	var _x = 100;
	var _y = 100;
	
	var _padding = 30;
	
	var _i = 0;
	repeat(ChatterboxGetContentCount(chatterbox))
		{
			//Get the content strings from the chatterbox
			var _content = chatterbox.content[_i];
			var _line_text = _content;
			
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