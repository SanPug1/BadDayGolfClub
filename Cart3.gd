extends Area2D

signal hit

export var speed = 0.25
var screen_size = Vector2.ZERO
var cartSpawn = -1
var moveable = false



func _ready():
	screen_size = get_viewport_rect().size
	randomize()
	cartSpawn = randi() % 2
	if cartSpawn == 0: 
		position.x = 0.906
		position.y = 0.921
	else: 
		position.x = 0.934
		position.y = 0.492
	

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_3"):
		moveable = true	
	elif Input.is_action_pressed("ui_2") || Input.is_action_pressed("ui_1"): 
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
		
		position += velocity * speed * delta
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
