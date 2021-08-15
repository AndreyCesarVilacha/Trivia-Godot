extends Control

#For auto complete out side of Scene
class_name FRAME

func get_border() -> NinePatchRect:
	var __border: NinePatchRect = find_node("Border");
	assert(__border, "ERRO ON LINE 6");
	return __border;

func get_bg() -> NinePatchRect:
	var __bg: NinePatchRect = find_node("BG");
	assert(__bg, "ERRO ON LINE 11");
	return __bg;
