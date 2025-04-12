extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		flip_h = false
		play()
	elif Input.is_action_pressed("ui_left"):
		flip_h = true
		play()
		#play_backwards()
	else:
		stop() # or pause()
