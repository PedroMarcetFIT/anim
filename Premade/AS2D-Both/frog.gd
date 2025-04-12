extends AnimatedSprite2D

var reverse = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		play()
	
	if reverse:
		play_backwards()


func _on_animation_finished() -> void:
	if !reverse:
		frame = 2
	reverse = !reverse
	
