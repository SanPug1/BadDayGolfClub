extends Area2D

signal hit

export var speed = 0.25
var screen_size = Vector2.ZERO

# Vivek was here

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	var velocity = Vector2.ZERO
	
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
	
	print("velocity", velocity) 
	print("speed", speed)
	print("delta", delta)
	
	position += velocity * speed * delta
	position.x = clamp(position.x,0,screen_size.x)
	position.y = clamp(position.y,0,screen_size.y)
	
	if velocity.x != 0:
		$AnimatedSprite.animation = "right_left"
		$AnimatedSprite.flip_h = velocity.x > 0
		$AnimatedSprite.flip_v = false
	elif velocity.y != 0:
		$AnimatedSprite.animation = "up"
		$AnimatedSprite.flip_v = velocity.y > 0
		$AnimatedSprite.flip_h = false

func start(new_position):
	position = new_position
	show()
