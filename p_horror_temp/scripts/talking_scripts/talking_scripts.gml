/// @param maxDist
/// @param checkAgainstMe

//Checks if the player is in range (maxDist) to talk to this object.

function find_nearest_talker(argument0, argument1) {

	var _global_min_dist  = argument0;
	var _check_against_me = argument1;

	var _min_dist     = _global_min_dist;
	var _min_id       = noone;
	var _min_priority = 0;

	var _subject_instance = oPlayer.id;
	//Make sure the player exists. If they don't (i.e. it's some kind of cutscene)
	//just return false.
	if ( !instance_exists(_subject_instance) )
	{
	    if (_check_against_me)
	    {
	        return false;
	    }
	    else
	    {
	        return noone;
	    }
	}

	var _facing_index = 0;
	switch(_subject_instance.sprite_index)
	{
		//Make sure the player is facing us.
	    case spr_player_right: _facing_index = 0; break;
	    case spr_player_up:    _facing_index = 1; break;
	    case spr_player_left:  _facing_index = 2; break;
	    case spr_player_down:  _facing_index = 3; break;
	}

	with(all)
	{
	    if (id == _subject_instance) continue;
	    if ( !variable_instance_exists(id, "talking") ) continue;
    
	    if ( variable_instance_exists(id, "talking_able") )
	    {
	        if ( !talking_able )
	        {
				//If for whatever reason we shouldn't be able to talk to this object, just ignore it.
	            show_debug_message( "ignoring " + object_get_name(object_index) + ":" + string(id) + ", talking_able=" + string(talking_able) );
	            continue;
	        }
	    }
    
	    var _priority = 0;
	    if ( variable_instance_exists(id, "talking_priority") ) _priority = talking_priority;
	    if (_priority < _min_priority) continue;
    
	    var _l =                   bbox_left - _subject_instance.bbox_right;
	    var _t =                   bbox_top  - _subject_instance.bbox_bottom;
	    var _r = _subject_instance.bbox_left -                   bbox_right;
	    var _b = _subject_instance.bbox_top  -                   bbox_bottom;
    
	    //Test if the subject instance is facing the correct way to interact with this instance
	    if ((_l >= 0) || (_t >= 0) || (_r >= 0) || (_b >= 0))
	    {
	        var _facing = false;
	        if ( (_l >= 0) && (_facing_index == 0) ) _facing = true;
	        if ( (_b >= 0) && (_facing_index == 1) ) _facing = true;
	        if ( (_r >= 0) && (_facing_index == 2) ) _facing = true;
	        if ( (_t >= 0) && (_facing_index == 3) ) _facing = true;
	        if (!_facing) continue;
	    }
    
	    var _dist = max(_l, _t, _r, _b);

	    if (_dist < _min_dist) || ((_dist < _global_min_dist) && (_priority > _min_priority))
	    {
	        _min_dist     = _dist;
	        _min_id       = id;
	        _min_priority = _priority;
	    }
	}

	if (_check_against_me)
	{
	    if (_min_id == id)
	    {
	        //show_debug_message( "find_nearest_talker: Choosing me! Item=" + object_get_name(_min_id.object_index) + ":" + string(_dist) );
	        return true;
	    }
	    else
	    {
	        return false;
	    }
	}
	else
	{
	    return _min_id;
	}


}


function handle_talking() {
	//check if the instance is talking!

	if (talking && global.dialogue_is_open) talking = false;


}
