extends Node2D

var scene = preload("res://Scenes/Prova3/Fase3.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/Global".fase = 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_end_point_body_entered(body: Node2D) -> void:
	if body.name == "Player" :
		get_tree().change_scene_to_packed(scene)
