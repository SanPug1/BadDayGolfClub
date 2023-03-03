extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


var og = 0.987759


func _on_Cart_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if str(area) == "GameBorder:[Area2D:1462]":
		print(get_node("/root/main/Cart").speed)
		og = get_node("/root/main/Cart").speed
		get_node("/root/main/Cart").speed=og * (-1)
		var t = Timer.new()
		t.set_wait_time(0.1)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
		get_node("/root/main/Cart").speed= og
		

func _on_Cart2_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if str(area) == "GameBorder:[Area2D:1462]":
		print(get_node("/root/main/Cart2").speed)
		og = get_node("/root/main/Cart2").speed
		get_node("/root/main/Cart2").speed=og * (-1)
		var t = Timer.new()
		t.set_wait_time(0.1)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
		get_node("/root/main/Cart2").speed= og



func _on_Cart3_area_shape_entered(area_rid, area, area_shapeindex, local_shape_index):
	if str(area) == "GameBorder:[Area2D:1462]":
		print(get_node("/root/main/Cart3").speed)
		og = get_node("/root/main/Cart3").speed
		get_node("/root/main/Cart3").speed=og * (-1)
		var t = Timer.new()
		t.set_wait_time(0.1)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
		get_node("/root/main/Cart3").speed= og


