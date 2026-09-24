extends Control

@onready var move_area: TextureRect = $MoveArea
@onready var start_label: Label = $StartLabel
@onready var player_score_label: Label = $PlayerScoreLabel
@onready var enemy_score_label: Label = $EnemyScoreLabel

func _ready() -> void:
	move_area.visible = true
	start_label.visible = true
