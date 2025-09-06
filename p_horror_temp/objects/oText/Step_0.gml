

if ChatterboxIsWaiting(chatterbox){
	
	if InputReleased(INPUT_VERB.ACTION){
		ChatterboxContinue(chatterbox);	
		refresh_text_elements();
	}
	
} else {
	if (ChatterboxGetOptionCount(chatterbox)) //If Chatterbox is presenting the user with some options, check for that
    {
		var _select = undefined; // What the user selected.
		   //You'll need more of these if you have more than three options, of course!
		      //if (input_check_released("choice1")) or (InputPressed(INPUT_VERB.ACTION) and hovering = "choice1") _select = 0;      
			  //if (input_check_released("choice2")) or (InputPressed(INPUT_VERB.ACTION) and hovering = "choice2") _select = 1;      
			  //if (input_check_released("choice3")) or (InputPressed(INPUT_VERB.ACTION) and hovering = "choice3") _select = 2;
			  //If we've pressed a button, select that option
			  //There is almost certainly a more elegant way to do this but this tutorial is so long already...
			  if (_select != undefined) {
				ChatterboxSelect(chatterbox, _select);
				refresh_text_elements();
				} 
			}
}