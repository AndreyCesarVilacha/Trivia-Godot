extends TextureButton

func get_FRAME() -> FRAME:
	var __FRAME: FRAME = $FRAME;
	assert(__FRAME);
	return __FRAME;

func _on_mouse_entered() -> void:
	get_FRAME().get_border().self_modulate = Color.yellow;

func _on_mouse_exited() -> void:
	get_FRAME().get_border().self_modulate = Color.white;

func _on_pressed() -> void:
	print("Button Pressed!");

func _ready() -> void:
	connect("mouse_entered",self, "_on_mouse_entered");
	connect("mouse_exited", self, "_on_mouse_exited");
	connect("pressed",self,"_on_pressed");



