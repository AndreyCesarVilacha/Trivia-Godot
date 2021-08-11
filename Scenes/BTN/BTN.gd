extends Control

func _on_mouse_entered():
	print("mouse entered the BTN")
	pass

func _ready() -> void:
	connect("mouse_entered",self, "_on_mouse_entered")
	pass



