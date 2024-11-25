extends CharacterBody2D

@onready var animacao = $Animacao as AnimatedSprite2D
var tiro = preload("res://Scenes/Prova3/bullet.tscn")
var auxTiro = false
var SPEED = 0
var vida = 10


func _physics_process(delta: float) -> void:
	if auxTiro == false :
		if $atirar.is_colliding():
			$Timer.start()
			auxTiro = true


func _on_timer_timeout() -> void:
	var ti = tiro.instantiate()
	self.add_child(ti)
	auxTiro = false


func _on_animacao_animation_finished() -> void:
	if animacao.animation == "Hit" :
		print("aiai")
