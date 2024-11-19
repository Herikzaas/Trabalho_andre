extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	exibeVidas()
	$"Itens coletados/qtdApple".text = str($"/root/Global".apple)

func exibeVidas():
	if $"/root/Global".vidas == 5:
		$Vidas2/Life1.visible = true
		$Vidas2/Life2.visible = true
		$Vidas2/Life3.visible = true
		$Vidas2/Life4.visible = true
		$Vidas2/Life5.visible = true
	if $"/root/Global".vidas == 4:
		$Vidas2/Life1.visible = true
		$Vidas2/Life2.visible = true
		$Vidas2/Life3.visible = true
		$Vidas2/Life4.visible = true
		$Vidas2/Life5.visible = false
	if $"/root/Global".vidas == 3:
		$Vidas2/Life1.visible = true
		$Vidas2/Life2.visible = true
		$Vidas2/Life3.visible = true
		$Vidas2/Life4.visible = false
		$Vidas2/Life5.visible = false
	if $"/root/Global".vidas == 2:
		$Vidas2/Life1.visible = true
		$Vidas2/Life2.visible = true
		$Vidas2/Life3.visible = false
		$Vidas2/Life4.visible = false
		$Vidas2/Life5.visible = false
	if $"/root/Global".vidas == 1:
		$Vidas2/Life1.visible = true
		$Vidas2/Life2.visible = false
		$Vidas2/Life3.visible = false
		$Vidas2/Life4.visible = false
		$Vidas2/Life5.visible = false
	if $"/root/Global".vidas == 0:
		$Vidas2/Life1.visible = false
		$Vidas2/Life2.visible = false
		$Vidas2/Life3.visible = false
		$Vidas2/Life4.visible = false
		$Vidas2/Life5.visible = false
