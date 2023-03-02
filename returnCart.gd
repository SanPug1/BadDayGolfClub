extends CollisionShape2D
signal returnLineTrigger

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Cart3_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if str(area) == "CartReturn:[Area2D:1305]":
		get_node("/root/main/Cart3").position.x = 0.376
		get_node("/root/main/Cart3").position.y = 0.075
		get_node("/root/main/Cart3").moveable = false 
		get_node("/root/main/Cart3").parked = true 



func _on_Cart2_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if str(area) == "CartReturn:[Area2D:1305]":
		print ("In here 2 ")
		get_node("/root/main/Cart2").position.x = 0.469
		get_node("/root/main/Cart2").position.y = 0.075
		get_node("/root/main/Cart2").moveable = false 
		get_node("/root/main/Cart2").parked = true 
	


func _on_Cart_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if str(area) == "CartReturn:[Area2D:1305]":
		get_node("/root/main/Cart").position.x = 0.571
		get_node("/root/main/Cart").position.y = 0.075
		get_node("/root/main/Cart").moveable = false 
		get_node("/root/main/Cart").parked = true 
