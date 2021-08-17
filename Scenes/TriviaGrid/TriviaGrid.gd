extends VBoxContainer

class_name TriviaGrid

onready var question_label: LABEL = $QuestionLabel;
onready var btn_grid : BTNGrid = $BTNGrid;
onready var money_label : LABEL = $MoneyLabel;

var money := 0;

func increase_money_total() ->void:
	if money == 0:
		money = 100;
	else:
		money *=2;
	update_money_label();

func update_money_label() -> void:
	money_label.set_label_text(str("$", money));
	pass

func update_question_and_choices_text() -> void:
	question_label.set_label_text(Questions.get_guestion());
	btn_grid.update_BTNs_text();

func _ready() -> void:
	assert(question_label);
	assert(btn_grid);
	assert(money_label);
	update_question_and_choices_text();
	update_money_label();
	G.trivia_grid = self;
	pass


