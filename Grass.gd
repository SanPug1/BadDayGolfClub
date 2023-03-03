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


func _on_Cart_area_entered(area):
	if str(area) == "Grass:[Area2D:1409]":
		get_node("/root/main/Cart").dirt +=1
		if get_node("/root/main/Cart").dirt==1:
			get_node("/root/main/Cart").speed=get_node("/root/main/Cart").speed * 0.5

	
	
#
#	print(area.get_name())
#
#		get_node("/root/main/Cart").dirt = 0.5
#		print("Entered area",get_node("/root/main/Cart").dirt)







func _on_Cart2_area_entered(area):
	print(area.get_name())
	if str(area) == "Grass:[Area2D:1409]":
		get_node("/root/main/Cart").dirt = 5
		print("Entered area",get_node("/root/main/Cart").dirt)


func _on_Cart2_area_exited(area):
	if str(area) == "Grass:[Area2D:1409]":
		get_node("/root/main/Cart").dirt = 10
		print("exited area",get_node("/root/main/Cart").dirt)
		print("speed",get_node("/root/main/Cart").speed)



func _on_Cart3_area_entered(area):
	print(area.get_name())
	if str(area) == "Grass:[Area2D:1409]":
		get_node("/root/main/Cart").dirt = 0.5
		print("Entered area",get_node("/root/main/Cart").dirt)


func _on_Cart3_area_exited(area):
	if str(area) == "Grass:[Area2D:1409]":
		get_node("/root/main/Cart").dirt = 1
		print("exited area",get_node("/root/main/Cart").dirt)
		print("speed",get_node("/root/main/Cart").speed)



func _on_Cart_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):

	if str(area) == "Grass:[Area2D:1410]":
		get_node("/root/main/Cart").dirt +=1
		if get_node("/root/main/Cart").dirt==1:
			get_node("/root/main/Cart").speed=0.2
			print(get_node("/root/main/Cart").speed)
		if get_node("/root/main/Cart").dirt==3:
			get_node("/root/main/Cart").speed=0.15
			print(get_node("/root/main/Cart").speed)
		if get_node("/root/main/Cart").dirt==3:
			get_node("/root/main/Cart").speed=0.1
			print(get_node("/root/main/Cart").speed)


func _on_Cart2_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if str(area) == "Grass:[Area2D:1410]":
		get_node("/root/main/Cart2").dirt +=1
		if get_node("/root/main/Cart2").dirt==1:
			get_node("/root/main/Cart2").speed=0.2
			print(get_node("/root/main/Cart2").speed)
		if get_node("/root/main/Cart2").dirt==3:
			get_node("/root/main/Cart2").speed=0.15
			print(get_node("/root/main/Cart2").speed)
		if get_node("/root/main/Cart2").dirt==3:
			get_node("/root/main/Cart2").speed=0.1
			print(get_node("/root/main/Cart2").speed)




func _on_Cart3_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if str(area) == "Grass:[Area2D:1410]":
		get_node("/root/main/Cart3").dirt +=1
		if get_node("/root/main/Cart3").dirt==1:
			get_node("/root/main/Cart3").speed=0.2
			print(get_node("/root/main/Cart3").speed)
		if get_node("/root/main/Cart3").dirt==3:
			get_node("/root/main/Cart3").speed=0.15
			print(get_node("/root/main/Cart3").speed)
		if get_node("/root/main/Cart3").dirt==3:
			get_node("/root/main/Cart3").speed=0.1
			print(get_node("/root/main/Cart3").speed)


