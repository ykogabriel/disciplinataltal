extends Control

func _on_button_pressed() -> void:
	str(int($n1.text) + int($n2.text))
	
	if $OptionButton.get_selected_id() == 0:
		$Label.text = str(int($n1.text) + int($n2.text))
		
	elif $OptionButton.get_selected_id() == 1:
		$Label.text = str(int($n1.text) - int($n2.text))
		
	elif $OptionButton.get_selected_id() == 2: 
		$Label.text = str(int($n1.text) / int($n2.text))
		
	elif $OptionButton.get_selected_id() == 3: 
		$Label.text = str(int($n1.text) * int($n2.text))
		
	else:
		$Label.text = "selecione uma operação"
		
	pass 
