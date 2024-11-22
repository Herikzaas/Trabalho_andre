extends Area2D

var enemy = preload("res://Scenes/mushroom.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player" :
		global_position.x = 1300
		var ene = enemy.instantiate()
		self.add_child(ene)
		await get_tree().create_timer(2).timeout 
		global_position.x = 1150
