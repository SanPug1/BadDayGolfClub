extends Area2D

export var speed = 0.25
var screen_size = Vector2.ZERO
var moveToRight = false
var change = -1


func _ready():
	screen_size = get_viewport_rect().size
	position.x = 0.618
	position.y = 0.264
	

func _process(delta):
	var velocity = Vector2.ZERO


	if position.x < 0.326:
		change = 1
	elif position.x > 0.617:
		change = -1 
	velocity.x += change

			
	if velocity.length() > 0:
		velocity = velocity.normalized()
#		$AnimatedSprite.play()
#	else:
#		$AnimatedSprite.stop()
		
	position += velocity * speed * delta
	position.x = clamp(position.x,0,screen_size.x)
	position.y = clamp(position.y,0,screen_size.y)
		
#	if velocity.x != 0:
#		$AnimatedSprite.animation = "right_left"
#		$AnimatedSprite.flip_h = velocity.x > 0
#		$AnimatedSprite.flip_v = false
#	elif velocity.y != 0:
#		if velocity.y > 0:
#			$AnimatedSprite.animation = "down"
#		elif velocity.y < 0:
#			$AnimatedSprite.animation = "up"

