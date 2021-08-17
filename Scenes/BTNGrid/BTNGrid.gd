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

func disable() -> void:
	for __i in BTN_COUNT:
		var __BTN: BTN = BTNs[__i];
		__BTN.clickable = false;
		__BTN.hoverable = false;

func update_BTNs_text() -> void:
	var __choices := Questions.get_choices();
	randomize();
	__choices.shuffle();
	assert(__choices.size() == BTN_COUNT);
	for __i in BTN_COUNT:
		var __choice: String = __choices[__i];
		var __BTN: BTN = BTNs[__i];
		__BTN.set_label_text(__choice);

func _ready():
	_init_BTNs();
	update_BTNs_text();
