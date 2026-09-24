extends StaticBody2D

signal player_scored
signal enemy_scored

func _on_player_score_zone_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		player_scored.emit()

func _on_enemy_score_zone_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		enemy_scored.emit()
