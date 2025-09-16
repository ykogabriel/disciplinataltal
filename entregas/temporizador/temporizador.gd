extends Control

var total_time_in_secs : int = 0

func _ready():
	# start Timer at specific time:
	# (or use 'Autostart' property)
	$Timer.start()

func on_timer_timeout():
	total_time_in_secs += 1
	var h = int(total_time_in_secs / 3600)
	var m = int((total_time_in_secs % 3600) / 60)
	var s = total_time_in_secs % 60
	$Label.text = '%02d:%02d:%02d' % [h, m, s]
