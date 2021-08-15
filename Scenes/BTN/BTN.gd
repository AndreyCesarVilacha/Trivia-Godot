extends TextureButton

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

func _on_mouse_entered() -> void:
	set_border_color(Color.red);
	set_label_text_color(Color.red);

func _on_mouse_exited() -> void:
	set_border_color(Color.white);
	set_label_text_color(Color.white);

func _on_pressed() -> void:
	get_LABEL().text = "Hello!";
	print("Button Pressed!");

func _ready() -> void:
	connect("mouse_entered",self, "_on_mouse_entered");
	connect("mouse_exited", self, "_on_mouse_exited");
	connect("pressed",self,"_on_pressed");



