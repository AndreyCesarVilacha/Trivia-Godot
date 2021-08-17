extends Node

const LIST := [
	"Which ocean is the largest?|Pacific|Indian|Arctic|Atlantic",
	"Which type of tree is the tallest?|Redwood|Cypress|Ash|Pine",
	"< Ag > is the symbol for which element?|Silver|Gold|Aluminum|Argon",
	"How many bytes are in a gigabyte?|One billion|One thousand|One million|One trillion"
];

var index := 0;
var shuffled_list := [];

func init_shuffled_list() -> void:
	randomize();
	shuffled_list = LIST.duplicate();
	shuffled_list.shuffle();

#func get_qa_array(__index: int ) -> Array:
#	var __qa_string: String = LIST[__index];
#	var __qa_array: Array = __qa_string.split("|");
#	return __qa_array;

func get_qa_array() -> Array:
	var __qa_string: String = shuffled_list[index];
	return Array(__qa_string.split("|"));

#func get_guestion(__index: int) -> String:
#	var __qa_array := get_qa_array(__index);
#	var __question : String = __qa_array[0]; 
#	return __question;

func get_guestion() -> String:
	return get_qa_array()[0];

func get_answer() -> String:
	return get_qa_array()[1];

func get_choices() -> Array:
	return get_qa_array().slice(1,4);

func _ready() -> void:
	init_shuffled_list();


