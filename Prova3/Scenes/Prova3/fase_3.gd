extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Player.global_position.x = 55
	$Player.global_position.y = 280
	$"/root/Global".fase = 3
	$AudioStreamPlayer2D.play()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
