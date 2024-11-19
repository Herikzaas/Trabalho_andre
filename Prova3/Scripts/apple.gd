extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if $Anim.animation != "Hit":
		$Anim.animation = "Hit"
		$AudioStreamPlayer2D.play()
		$"/root/Global".apple += 1

func _on_anim_animation_finished() -> void:
	queue_free()
