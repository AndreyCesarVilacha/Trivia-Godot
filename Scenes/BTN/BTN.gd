extends TextureButton

class_name BTN

const HIGHLIGHT_COLOR := Color.red;
const NORMAL_COLOR := Color.white;

var clickable := true;
var hoverable := true;

func get_FRAME() -> FRAME:
	var __FRAME: FRAME = $FRAME;
	assert(__FRAME, "ERRO ON LINE 3");
	return __FRAME;

func get_LABEL() -> Label:
	var __LABEL: Label = $Label;
	assert(__LABEL, "ERRO ON LINE 8");
	return __LABEL;

func set_bg_color(__color: Color) -> void:
	get_FRAME().get_bg().self_modulate = __color;

func set_border_color(__color: Color) -> void:
	get_FRAME().get_border().self_modulate = __color;

func set_label_text_color(__color: Color) -> void:
	get_LABEL().self_modulate = __color;

func set_label_text(__text: String) -> void:
	get_LABEL().text = __text;

func _on_mouse_entered() -> void:
	if hoverable:
		set_border_color(HIGHLIGHT_COLOR);
		set_label_text_color(HIGHLIGHT_COLOR);

func _on_mouse_exited() -> void:
	if hoverable:
		set_border_color(NORMAL_COLOR);
		set_label_text_color(NORMAL_COLOR);

#func _on_pressed() -> void:
#	if clickable:
#		set_label_text("Hello!");

func _ready() -> void:
	connect("mouse_entered",self, "_on_mouse_entered");
	connect("mouse_exited", self, "_on_mouse_exited");
	connect("pressed",self,"_on_pressed");



