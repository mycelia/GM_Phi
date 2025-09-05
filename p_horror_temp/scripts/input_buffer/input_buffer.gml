//We use an input queue buffer because it makes the movement feel more responsive

function player_input_queue_update() {

	if ( InputCheck(INPUT_VERB.UP) )
	{
	    if ( ds_list_find_index( input_queue, INPUT_VERB.UP ) < 0 ) ds_list_insert( input_queue, 0, INPUT_VERB.UP );
	}

	if ( InputCheck(INPUT_VERB.DOWN) )
	{
	    if ( ds_list_find_index( input_queue, INPUT_VERB.DOWN ) < 0 ) ds_list_insert( input_queue, 0, INPUT_VERB.DOWN);
	}

	if ( InputCheck(INPUT_VERB.LEFT) )
	{
	    if ( ds_list_find_index( input_queue, INPUT_VERB.LEFT ) < 0 ) ds_list_insert( input_queue, 0, INPUT_VERB.LEFT );
	}

	if ( InputCheck(INPUT_VERB.RIGHT) )
	{
	    if ( ds_list_find_index( input_queue, INPUT_VERB.RIGHT ) < 0 ) ds_list_insert( input_queue, 0, INPUT_VERB.RIGHT );
	}

	var _size = ds_list_size( input_queue );
	for( var _i = _size-1; _i >= 0; _i-- )
	{
	    var _state = false;
	    switch( input_queue[| _i] )
	    {
	        case INPUT_VERB.RIGHT: _state = InputCheck(INPUT_VERB.RIGHT); break;
	        case INPUT_VERB.UP:    _state = InputCheck(INPUT_VERB.UP);    break;
	        case INPUT_VERB.LEFT:  _state = InputCheck(INPUT_VERB.LEFT);  break;
	        case INPUT_VERB.DOWN:  _state = InputCheck(INPUT_VERB.DOWN);  break;
	    }
    
	    if ( !_state ) ds_list_delete( input_queue, _i );
	}

	if ( ds_list_size( input_queue ) <= 0 )
	{
	    input_queue_direction = -1;
	}
	else
	{
	    switch( input_queue[| 0] )
	    {
	        case INPUT_VERB.RIGHT: input_queue_direction =   0; break;
	        case INPUT_VERB.UP:    input_queue_direction =  90; break;
	        case INPUT_VERB.LEFT:  input_queue_direction = 180; break;
	        case INPUT_VERB.DOWN:  input_queue_direction = 270; break;
	    }
	}


}


function player_input_queue_clear() {
	ds_list_clear( input_queue );


}
