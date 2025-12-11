extends Node2D

var clicks := 0
var display_clicks = Label
var clicks_str: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	display_clicks = get_parent().get_node("Clicks")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Click"):
		var tween = get_tree().create_tween()
		tween.tween_property($"Clicker Image","scale", Vector2(0.8, 0.8), 0.1)
		tween.tween_property($"Clicker Image","scale", Vector2(1, 1), 0.1)
		clicks += 1
		clicks_str = str(clicks)
		display_clicks.text = clicks_str
		clicks = int(clicks_str)
		print(clicks)
		
