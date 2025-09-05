// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_bbox_full(sprite){
	
	bbox_array = [sprite_get_bbox_left(sprite),sprite_get_bbox_top(sprite),sprite_get_bbox_right(sprite),sprite_get_bbox_bottom(sprite)];
	
	return bbox_array;
}