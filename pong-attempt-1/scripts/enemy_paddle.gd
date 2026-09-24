extends CharacterBody2D

@export var ball: CharacterBody2D

var speed := 200.0
var start_pos := Vector2(1132, 324)
var middle := 556.0

func _ready() -> void:
	position = start_pos

func _physics_process(delta: float) -> void:
	var distance := global_position.distance_to(ball.position)
	var distance_y := ball.global_position - global_position
	var deadzone := 10.0
	
	if abs(distance_y.y) < deadzone:
		velocity = Vector2.ZERO
	else:
		velocity.y = distance_y.y * speed * delta
	
	if (distance > middle):
		velocity = Vector2.ZERO
	
	move_and_slide()
