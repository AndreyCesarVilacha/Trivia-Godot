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

func _on_mouse_entered() -> void:
	get_FRAME().get_border().self_modulate = Color.red;

func _on_mouse_exited() -> void:
	get_FRAME().get_border().self_modulate = Color.white;

func _on_pressed() -> void:
	get_LABEL().text = "Hello!";
	print("Button Pressed!");

func _ready() -> void:
	connect("mouse_entered",self, "_on_mouse_entered");
	connect("mouse_exited", self, "_on_mouse_exited");
	connect("pressed",self,"_on_pressed");
	set_bg_color(Color.green);



