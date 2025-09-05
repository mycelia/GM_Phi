function get_binding_icon(verb)
{
	///Originally by Tom. Thanks, Tom!
    if (is_string(verb) == false)
    {
      show_debug_message("get_binding_icon: " + string(verb) + " is not a string");
      return undefined;
    }
    var binding = input_binding_get(verb);
    var icon = input_binding_get_icon(binding);
    if (asset_get_type(icon) != asset_sprite)
    {
      show_debug_message("get_binding_icon: " + string(icon) + " is not a sprite");
      return undefined;
    }
    return icon;
}