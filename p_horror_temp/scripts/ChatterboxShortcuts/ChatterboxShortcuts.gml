///Shortcuts for Chatterbox
//Because I got sick of typing the full function names.

/// @param variable
/// @param default
function cvar_get(){
	var _name    = argument[0];
	var _default = (argument_count > 1)? argument[1] : CHATTERBOX_VARIABLE_MISSING_VALUE;
	return ChatterboxVariableGet(_name, _default);
}


/// @param variable
/// @param value
function cvar_set(_variable, _value){
	return ChatterboxVariableSet(_variable, _value);	
}

/// @function visited(node,file);
/// @param nodeTitle
/// @param [filename]

function visited(_node, _file)
{
	if (argument_count > 1) || (_file == undefined)
    {
		return ChatterboxGetVisited(_node, _file);
	}
    else
    {
		_file = "dialogue.yarn";
        return ChatterboxGetVisited(_node,_file);
    }
}