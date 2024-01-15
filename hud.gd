extends Control

var random_number = 0

func newgame():
	$but_restart.hide()
	var rng = RandomNumberGenerator.new()
	random_number = rng.randi_range(1, 20)
	$lbl_randnumber.text = str(random_number)
	$lbl_result.text = ""

func _ready():
	newgame()

func _on_but_ok_button_down():
	var guess_number = int($txt_guessnumber.text)
	if guess_number > random_number:
		$lbl_result.text = "Too much"
	elif guess_number < random_number:
		$lbl_result.text = "Too little"
	elif guess_number == random_number:
		$lbl_result.text = "Correct !"
		$but_restart.show()

func _on_but_restart_button_down():
	newgame()
