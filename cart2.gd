extends Area2D

signal hit

export var speed = 0.25
var screen_size = Vector2.ZERO
var cartSpawn = -1;
var moveable = false;
var parked = false
var dirt = 0
var button=false


func _ready():
	screen_size = get_viewport_rect().size
	randomize()
	cartSpawn = randi() % 2
	if cartSpawn == 0: 
		position.x = 0.064
		position.y = 0.927
	else: 
		position.x = 0.477
		position.y = 0.892
	
var dirtmod = 1

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_2") && parked == false && button==true:
		moveable = true
	elif Input.is_action_pressed("ui_1") || Input.is_action_pressed("ui_3"): 
		moveable = false	
	
	if moveable == true: 
		if Input.is_action_pressed("ui_right"):
			velocity.x += 1
		if Input.is_action_pressed("ui_left"):
			velocity.x -= 1
		if Input.is_action_pressed("ui_down"):
			velocity.y += 1
		if Input.is_action_pressed("ui_up"):
			velocity.y -= 1
			
		if velocity.length() > 0:
			velocity = velocity.normalized()
			$AnimatedSprite.play()
		else:
			$AnimatedSprite.stop()
		
		if dirt == 1:
			dirtmod = 0.75
		if dirt == 2:
			dirtmod = 0.6
		if dirt == 3:
			dirtmod = 0.45
		if dirt == 0:
			dirtmod = 1
		
		position += velocity * speed * delta * dirtmod
		position.x = clamp(position.x,0,screen_size.x)
		position.y = clamp(position.y,0,screen_size.y)
		
		if velocity.x != 0:
			$AnimatedSprite.animation = "right_left"
			$AnimatedSprite.flip_h = velocity.x > 0
			$AnimatedSprite.flip_v = false
		elif velocity.y != 0:
			if velocity.y > 0:
				$AnimatedSprite.animation = "down"
			elif velocity.y < 0:
				$AnimatedSprite.animation = "up"

func start(new_position):
	position = new_position
	show()
