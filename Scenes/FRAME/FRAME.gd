extends Control

class_name FRAME

func get_border() -> NinePatchRect:
	var __border: NinePatchRect = find_node("Border");
	assert(__border);
	return __border;
