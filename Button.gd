extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _pressed():
	print("Pressed")
	$mariokartsound.play()
	var t = Timer.new()
	t.set_wait_time(5)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	$mariokartsound.stop()
	get_node("/root/main/Cart").button=true
	get_node("/root/main/Cart2").button=true
	get_node("/root/main/Cart3").button=true
	hide()
