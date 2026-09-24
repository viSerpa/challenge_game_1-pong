extends Node

@export var ball: CharacterBody2D
@export var hud: Control

func _ready() -> void:
	hud.player_score_label.text = "Player: " + str(ScoreManager.player_score)
	hud.enemy_score_label.text = "Enemy: " + str(ScoreManager.enemy_score)

func _on_arena_enemy_scored() -> void:
	ScoreManager.player_score += 1
	hud.player_score_label.text = "Player: " + str(ScoreManager.player_score)
	get_tree().reload_current_scene.call_deferred()

func _on_arena_player_scored() -> void:
	ScoreManager.enemy_score += 1
	hud.enemy_score_label.text = "Enemy: " + str(ScoreManager.enemy_score)
	get_tree().reload_current_scene.call_deferred()

func _on_player_paddle_game_started() -> void:
	ball.velocity = Vector2(-30.0, 0)
	hud.start_label.visible = false
