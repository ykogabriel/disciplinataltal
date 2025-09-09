extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	$TextureProgressBar.value +=10
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	$TextureProgressBar.value += 1 
	pass # Replace with function body.


func _on_texture_progress_bar_value_changed(value: float) -> void:
	if value >= $TextureProgressBar.max_value:
		$TextureProgressBar.max_value = $TextureProgressBar.max_value * 1.2
		$TextureProgressBar.value = 0
		$TextureProgressBar/Label.text =str(int($TextureProgressBar/Label.text) + 1) 

	pass # Replace with function body.
