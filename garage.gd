extends Node2D

var problems = [
	{"question": "What is 2+3 ?", "answer": "5"},
	{"question": "What is 10-4 ?", "answer": "6"},
	{"question": "What is 3*3 ?", "answer": "9"}
]

var current_problem = 0

func _ready() -> void:
	$Label.text = problems[current_problem]["question"]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_button_pressed() -> void:
	var answer = $LineEdit.text.strip_edges()
	if answer == problems[current_problem]["answer"]:
		current_problem += 1
		if current_problem < problems.size():
			$Label.text = problems[current_problem]["question"]
			$LineEdit.text = ""
		else:
			$Label.text = "All Problems Solved !"
	else:
		$Label.text = "Try Again: " + problems[current_problem]["question"]
