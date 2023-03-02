extends Area2D

var turbospeed = 0.35
var ogspeed = 0.25
var slowspeed = 0.15

func _ready():
	randomize()

func _on_TurboTimer_timeout():
	get_node("/root/main/Cart").speed = ogspeed

func eventgenerator():
	var currentspeed = get_node("/root/main/Cart").speed
	var eventnumber = randi() % 10
	if (eventnumber == 2 and $AnimatedSprite.animation == "default") or ($AnimatedSprite.animation == "Mud"):
		$AnimatedSprite.animation = "Mud"
	elif (eventnumber == 4 and $AnimatedSprite.animation == "default") or ($AnimatedSprite.animation == "Water"):
		$AnimatedSprite.animation = "Water"
	elif (eventnumber == 6 and $AnimatedSprite.animation == "default") or ($AnimatedSprite.animation == "Potholes"):
		$AnimatedSprite.animation = "Potholes"
		if currentspeed == ogspeed:
			get_node("/root/main/Cart").speed = slowspeed
			get_node("/root/main/Cart2").speed = slowspeed
			get_node("/root/main/Cart3").speed = slowspeed
			$TurboTimer.start()
		elif currentspeed == slowspeed:
			$TurboTimer.stop()
			get_node("/root/main/Cart").speed = slowspeed
			get_node("/root/main/Cart2").speed = slowspeed
			get_node("/root/main/Cart3").speed = slowspeed
			$TurboTimer.start()
		elif currentspeed == turbospeed:
			get_node("/root/main/Cart").speed = ogspeed
			get_node("/root/main/Cart2").speed = ogspeed
			get_node("/root/main/Cart3").speed = ogspeed
	elif (eventnumber == 8 and $AnimatedSprite.animation == "default") or ($AnimatedSprite.animation == "Turbo"):
		$AnimatedSprite.animation = "Turbo"
		if currentspeed == ogspeed:
			get_node("/root/main/Cart").speed = turbospeed
			get_node("/root/main/Cart2").speed = turbospeed
			get_node("/root/main/Cart3").speed = turbospeed
			$TurboTimer.start()
		elif currentspeed == turbospeed:
			$TurboTimer.stop()
			get_node("/root/main/Cart").speed = turbospeed
			get_node("/root/main/Cart2").speed = turbospeed
			get_node("/root/main/Cart3").speed = turbospeed
			$TurboTimer.start()
		elif currentspeed == slowspeed:
			get_node("/root/main/Cart").speed = ogspeed
			get_node("/root/main/Cart2").speed = ogspeed
			get_node("/root/main/Cart3").speed = ogspeed
		
func _on_Events_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events2_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events3_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events4_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events5_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events6_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events7_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events8_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events9_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events10_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events11_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events12_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events13_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events14_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events15_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events16_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events17_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events18_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events19_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events20_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events21_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events22_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()

func _on_Events23_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	eventgenerator()
