extends Area2D

var turbospeed = 0.35
var ogspeed = 0.25
var slowspeed = 0.15
var affectedcart = ""

func _ready():
	randomize()

func _on_TurboTimer_timeout():
	get_node("/root/main/Cart").speed = ogspeed
	get_node("/root/main/Cart2").speed = ogspeed
	get_node("/root/main/Cart3").speed = ogspeed

func eventgenerator():
	var currentspeed = 0.25
	if affectedcart == "Cart":
		currentspeed = get_node("/root/main/Cart").speed
	elif affectedcart == "Cart2":
		currentspeed = get_node("/root/main/Cart2").speed
	elif affectedcart == "Cart3":
		currentspeed = get_node("/root/main/Cart3").speed
	var eventnumber = randi() % 10
	if (eventnumber == 2 and $AnimatedSprite.animation == "default") or ($AnimatedSprite.animation == "Mud"):
		$AnimatedSprite.animation = "Mud"
		if affectedcart == "Cart":
			if get_node("/root/main/Cart").dirt < 3:
				get_node("/root/main/Cart").dirt += 1
		elif affectedcart == "Cart2":
			if get_node("/root/main/Cart2").dirt < 3:
				get_node("/root/main/Cart2").dirt += 1
		elif affectedcart == "Cart3":
			if get_node("/root/main/Cart3").dirt < 3:
				get_node("/root/main/Cart3").dirt += 1
		print(get_node("/root/main/Cart").dirt)
		print(get_node("/root/main/Cart2").dirt)
		print(get_node("/root/main/Cart3").dirt)
	elif (eventnumber == 4 and $AnimatedSprite.animation == "default") or ($AnimatedSprite.animation == "Water"):
		$AnimatedSprite.animation = "Water"
		if affectedcart == "Cart":
			if get_node("/root/main/Cart").dirt > 0:
				get_node("/root/main/Cart").dirt -= 1
		elif affectedcart == "Cart2":
			if get_node("/root/main/Cart2").dirt > 0:
				get_node("/root/main/Cart2").dirt -= 1
		elif affectedcart == "Cart3":
			if get_node("/root/main/Cart3").dirt > 0:
				get_node("/root/main/Cart3").dirt -= 1
	elif (eventnumber == 6 and $AnimatedSprite.animation == "default") or ($AnimatedSprite.animation == "Potholes"):
		$AnimatedSprite.animation = "Potholes"
		if currentspeed == ogspeed:
			$TurboTimer.start()
			if affectedcart == "Cart":
				get_node("/root/main/Cart").speed = slowspeed
			elif affectedcart == "Cart2":
				get_node("/root/main/Cart2").speed = slowspeed
			elif affectedcart == "Cart3":
				get_node("/root/main/Cart3").speed = slowspeed
		elif currentspeed == slowspeed:
			$TurboTimer.stop()
			$TurboTimer.start()
			if affectedcart == "Cart":
				get_node("/root/main/Cart").speed = slowspeed
			elif affectedcart == "Cart2":
				get_node("/root/main/Cart2").speed = slowspeed
			elif affectedcart == "Cart3":
				get_node("/root/main/Cart3").speed = slowspeed
		elif currentspeed == turbospeed:
			if affectedcart == "Cart":
				get_node("/root/main/Cart").speed = ogspeed
			elif affectedcart == "Cart2":
				get_node("/root/main/Cart2").speed = ogspeed
			elif affectedcart == "Cart3":
				get_node("/root/main/Cart3").speed = ogspeed
	elif (eventnumber == 8 and $AnimatedSprite.animation == "default") or ($AnimatedSprite.animation == "Turbo"):
		$AnimatedSprite.animation = "Turbo"
		if currentspeed == ogspeed:
			$TurboTimer.start()
			if affectedcart == "Cart":
				get_node("/root/main/Cart").speed = turbospeed
			elif affectedcart == "Cart2":
				get_node("/root/main/Cart2").speed = turbospeed
			elif affectedcart == "Cart3":
				get_node("/root/main/Cart3").speed = turbospeed
		elif currentspeed == turbospeed:
			$TurboTimer.stop()
			$TurboTimer.start()
			if affectedcart == "Cart":
				get_node("/root/main/Cart").speed = turbospeed
			elif affectedcart == "Cart2":
				get_node("/root/main/Cart2").speed = turbospeed
			elif affectedcart == "Cart3":
				get_node("/root/main/Cart3").speed = turbospeed
		elif currentspeed == slowspeed:
			if affectedcart == "Cart":
				get_node("/root/main/Cart").speed = ogspeed
			elif affectedcart == "Cart2":
				get_node("/root/main/Cart2").speed = ogspeed
			elif affectedcart == "Cart3":
				get_node("/root/main/Cart3").speed = ogspeed
		
func _on_Events_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events2_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events3_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events4_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events5_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events6_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events7_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events8_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events9_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events10_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events11_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events12_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events13_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events14_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events15_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events16_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events17_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events18_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events19_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events20_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events21_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events22_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

func _on_Events23_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	affectedcart = str(area).split(":")[0]
	eventgenerator()

