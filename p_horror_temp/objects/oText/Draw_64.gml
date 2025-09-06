var _x = 100;
var _y = 100;
var _opty = 150;
activeRegion = 0;

if ChatterboxIsStopped(chatterbox){
	instance_destroy(self);	
} else {
	
	
	
	
	
	var _i = 0;
	 repeat(array_length(text_elements))
    {
        //Get our text element and position
        var _array = text_elements[_i];
        var _x       = _array[0];
        var _y       = _array[1];
        var _element = _array[2];
		var _typist  = _array[3];
		
		
        
        //Draw the text element
		_element.draw(_x, _y, _typist);
		
		var thisRegion =  _element.region_detect(_x,_y,InputMouseGuiX(),InputMouseGuiY());
		
		if thisRegion != undefined {
			_element.region_set_active(thisRegion,c_yellow,1);
			activeRegion +=1;
			hovering = thisRegion;
		} else {
			_element.region_set_active(undefined,c_yellow,1);
		}
		
        //Break out of the loop if this text element hasn't finished fading in
        if (_typist.get_state() < 1.0) break;
        
        ++_i;
    }
	
	if activeRegion <= 0 {
		//If there were no active regions this frame, set hovering to -1;
		hovering = -1;
	}

}



