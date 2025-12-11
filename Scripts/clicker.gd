extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Click"):
		var tween = get_tree().create_tween()
		tween.tween_property($"Clicker Image","scale", Vector2(0.8, 0.8), 0.1)
		tween.tween_property($"Clicker Image","scale", Vector2(1, 1), 0.1)
		
