extends Node

var trivia_grid : TriviaGrid = null;

func end_game() -> void:
	#get_tree().quit();
	trivia_grid.modulate = Color.gray.darkened(0.5);
	trivia_grid.btn_grid.disable();

func show_next_question():
	trivia_grid.increase_money_total();
	if Questions.index < Questions.LIST.size() - 1:
		Questions.index += 1;
		trivia_grid.update_question_and_choices_text();
	else:
		end_game();


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		show_next_question();
