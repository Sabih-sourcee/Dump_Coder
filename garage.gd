extends Node2D
var problems = [
	{"question": "What data type holds true or false?", "answer": "boolean"},
	{"question": "What symbol is used for a single-line comment in Python?", "answer": "#"},
	{"question": "What keyword defines a function in Python?", "answer": "def"},
	{"question": "What is 2 to the power of 5?", "answer": "32"},
	{"question": "What is the result of 10 % 3?", "answer": "1"},
	{"question": "What loop repeats while a condition is true?", "answer": "while"},
	{"question": "What loop is used to iterate over a list?", "answer": "for"},
	{"question": "What symbol is used for 'not equal to' in most languages?", "answer": "!="},
	{"question": "What do you call a variable that only functions can see inside them?", "answer": "local"},
	{"question": "What is the index of the first element in an array?", "answer": "0"},
	{"question": "What data structure uses key-value pairs?", "answer": "dictionary"},
	{"question": "What keyword stops a loop immediately in most languages?", "answer": "break"},
	{"question": "What keyword skips to the next loop iteration?", "answer": "continue"},
	{"question": "What is the binary representation of the number 2?", "answer": "10"},
	{"question": "What does HTML stand for?", "answer": "hypertext markup language"},
	{"question": "What does CSS stand for?", "answer": "cascading style sheets"},
	{"question": "What symbol typically ends a statement in C-like languages?", "answer": ";"},
	{"question": "What is the output of 5 == 5 in most languages?", "answer": "true"},
	{"question": "What do you call a function that calls itself?", "answer": "recursive"},
	{"question": "What is the length of the string 'hello'?", "answer": "5"},
	{"question": "What keyword declares a constant in GDScript?", "answer": "const"},
	{"question": "What is the result of 3 + 4 * 2 (order of operations)?", "answer": "11"},
	{"question": "What data type stores a single character or text?", "answer": "string"},
	{"question": "What do you call an error that happens while the program runs?", "answer": "runtime error"},
	{"question": "What symbol is used for exponentiation in Python?", "answer": "**"},
	{"question": "What keyword is used to exit a function early with a value in GDScript?", "answer": "return"},
	{"question": "What is the result of 10 // 3 (integer division)?", "answer": "3"},
	{"question": "What do you call a list of instructions a computer follows?", "answer": "algorithm"},
	{"question": "What is the logical opposite of true?", "answer": "false"},
	{"question": "What keyword is used to create a class in most OOP languages?", "answer": "class"}
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

















































