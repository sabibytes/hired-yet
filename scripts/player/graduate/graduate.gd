extends CharacterBody2D

@export var speed = 300
@onready var sprite: AnimatedSprite2D = $sprite

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * speed
	move_and_slide()
	
	if not is_zero_approx(velocity.length()):
		sprite.play("walk")
	else:
		sprite.play("idle")
