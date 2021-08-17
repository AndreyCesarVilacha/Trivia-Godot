extends Node

const LIST := [
	"Which ocean is the largest?|Pacific|Indian|Arctic|Atlantic",
	"Which type of tree is the tallest?|Redwood|Cypress|Ash|Pine",
	"< Ag > is the symbol for which element?|Silver|Gold|Aluminum|Argon",
	"How many bytes are in a gigabyte?|One billion|One thousand|One million|One trillion"
];

func get_qa_array(__index: int ) -> Array:
	var __qa_string: String = LIST[__index];
	var __qa_array: Array = __qa_string.split("|");
	return __qa_array;

func _ready() -> void:
	print(get_qa_array(3));
	var __qa_string: String = LIST.front();
	var __qa_String_array: Array = __qa_string.split("|");
	var __question: String = __qa_String_array.front();
	var __answer = __qa_String_array[1];



