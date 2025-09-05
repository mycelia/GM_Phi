// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move(){
	//Set our direction from the input queue
	 movement_direction = input_queue_direction;
	 
	 if movement_direction != -1{
		 //If we're moving, we need a speed...
		move_speed = walk_speed;
	 } else {
		 //... Otherwise, stop movement and round position.
		 move_speed = 0;
	     x = round(x);
	     y = round(y);
	 }
	
	if ( movement_and_collision( movement_direction, move_speed, oWallBase ) )
	{
		//If we're against a wall, run our wall-collision code
	    against_wall++;
	}
	else
	{
	    against_wall = false;
	}

	///Increment timer
	//timer++; // I don't remember what this does
	
	
	

}