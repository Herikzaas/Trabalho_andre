extends CharacterBody2D


var SPEED = randi_range(50, 150)
var direction = -1
@onready var animacao = $Animacao as AnimatedSprite2D


func _physics_process(delta: float) -> void:
	# Add the gravity.
	# Linhas commentadas para voar
	#if not is_on_floor():
	#	velocity += get_gravity() * delta

	if direction:
		velocity.x = direction * SPEED
	
	if $InverteDirecao.is_colliding():
		direction *= -1
		self.scale.x *= -1

	move_and_slide()

func _on_animacao_animation_finished() -> void:
	queue_free()
