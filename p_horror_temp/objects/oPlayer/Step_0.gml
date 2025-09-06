
if ( can_start_dialogue() ) cvar_set("playerSpriteSpeed", 0.1);

if ( !can_start_dialogue() )
{
    vx = 0;
    vy = 0;
}
else
{
    var _new_state = player_state_new();
    player_state_clear_previous();
    
    switch( global.player_state )
    {
        case E_PLAYER_STATE.IDLE:
            player_input_queue_update();
            move();
            
            vx = 0;
            vy = 0;
            
            if ( !cutscene_get_state() )
            {
				//If we're not in a cutscene, force the sprite to stop moving.
				//If we *were* in a cutscene we would want to respect the cutscene's directions.
                image_index = 0;
                image_speed = 0;
                cvar_set("playerSpriteSpeed", image_speed);

            }
            
            if (input_queue_direction != -1) player_state_set(E_PLAYER_STATE.MOVING);
        break;
       
        case E_PLAYER_STATE.MOVING:
            player_input_queue_update();
            move();
            
            //var _sprite = asset_get_index(cvar_get("playerSprite", "spr_player_right"));
            
			var _sprite = sprite_index;
			switch( input_queue_direction )
            {
                case 0:
                    global.facing = 1; //UP = 0, RIGHT = 1, DOWN = 2, LEFT = 3
                    _sprite = spr_player_right;
                break;
                
                case 90:
                    global.facing = 0;
                    _sprite = spr_player_up;
                break;
                
                case 180:
                    global.facing = 3;
                    _sprite = spr_player_left;
                break;
                
                case 270:
                    global.facing = 2;
                    _sprite = spr_player_down;
                break;
                
                case -1:
                    player_state_set(E_PLAYER_STATE.IDLE);
                break;
            }
            
            if global.player_facing_up {
				sprite_index = spr_player_up;
			} else sprite_index = _sprite;
            cvar_set("playerSprite", sprite_get_name(sprite_index));
            image_speed = cvar_get("playerSpriteSpeed",0.1);
            if (_new_state) image_index = 1;
			//If we've just started moving, go immediately to the first walking frame
			//Looks a bit smoother :)
        break;
  
        case E_PLAYER_STATE.CUTSCENE:
            player_input_queue_clear();
			
            vx = 0;
            vy = 0;
        break;
         
        case E_PLAYER_STATE.MENU:
            player_input_queue_clear();
            vx = 0;
            vy = 0;
            image_speed = 0;
            //sprite_index = spr_player_book;
            //cvar_set("playerSpriteSpeed", image_speed);
            //cvar_set("playerSprite", sprite_get_name(sprite_index));
        break;
         
        //case E_PLAYER_STATE.PUSHED:
        //    player_input_queue_update();
        //    
        //    if (_new_state)
        //    {
        //        is_pushed = true;
        //        //Directions are reversed (pushing away, not towards)
        //        switch global.facing
        //        {
        //            case 2:
        //                push_direction = point_direction(0,0,0,-1);
        //            break;
        //            
        //            case 3:
        //                //Right
        //                push_direction = point_direction(0,0,1,0);
        //            break;
        //            
        //            case 0:
        //                //Down
        //                push_direction = point_direction(0,0,0,1);
        //            break;
        //            
        //            case 1:
        //                //Left
        //                push_direction = point_direction(0,0,-1,0);
        //            break;
        //        }
        //        
        //        move_speed = push_speed;
        //    }
        //    
        //    scr_movement_code();
        //    image_speed = 0.1;
        //    
        //    if ( !is_pushed )
        //    {
        //        player_state_set( (input_queue_direction == -1)? E_PLAYER_STATE.IDLE : E_PLAYER_STATE.MOVING );
        //    }
        //break;
     }
}