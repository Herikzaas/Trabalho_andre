extends Node2D

var scene = preload("res://Scenes/bonus_01.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Player.global_position.x = 64
	$Player.global_position.y = 416
	$"/root/Global".fase = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		get_tree().change_scene_to_packed(scene)
