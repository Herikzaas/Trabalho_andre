extends Area2D

var velocidade = -200
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move_local_x(delta * velocidade)
	


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player" :
		$"/root/Global".vidas -= 1 
		queue_free()