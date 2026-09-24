extends CharacterBody2D

var speed := 30.0
var start_pos := Vector2(576, 324)

func _ready() -> void:
	position = start_pos
	#velocity = Vector2(-speed, 0)

func _physics_process(delta: float) -> void:
	var collision := move_and_collide(velocity * speed * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		if collision.get_collider() is CharacterBody2D:
			velocity = velocity.rotated(randf_range(0.0, 0.25))
