extends VBoxContainer

class_name BTNGrid

const BTN_MIN_SIZE := Vector2(120,40);
const BTN_COUNT := 4;
var BTNs = [];

func _init_BTNs() -> void:
	for __i in BTN_COUNT:
		var __BTN: BTN = find_node(str("BTN", __i + 1));
		assert(__BTN, "ERRO ON LINE 8, BTNGrid");
		__BTN.rect_min_size = BTN_MIN_SIZE;
		BTNs.append(__BTN);

func _ready():
	print(BTNs);
	_init_BTNs();
	print(BTNs);
	pass
