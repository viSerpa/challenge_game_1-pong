extends CharacterBody2D

signal game_started

const SPEED := 1500.0
var min_y_distance := 575.0
var max_y_distance := 75.0
var starting_pos := Vector2(20, 324)
var can_move := false

func _ready() -> void:
	position = starting_pos

func _physics_process(_delta: float) -> void:
	var mouse_pos = get_global_mouse_position()
	var direction = position.direction_to(mouse_pos)
	
	if !can_move:
		if Input.is_action_just_pressed("start_game"):
			velocity = direction * SPEED
			start_game()
			can_move = true
		return
	
	if (position.y < mouse_pos.y or position.y > mouse_pos.y):
		velocity = direction * SPEED
	
	if ((mouse_pos.y < max_y_distance or mouse_pos.y > min_y_distance) and 
	(position.y < max_y_distance or position.y > min_y_distance) or 
	(mouse_pos.x > 250.0) or (mouse_pos.x < 50.0)):
		velocity = Vector2.ZERO
	
	velocity.x = 0.0
	
	move_and_slide()

func start_game() -> void:
	if !can_move:
		game_started.emit()
