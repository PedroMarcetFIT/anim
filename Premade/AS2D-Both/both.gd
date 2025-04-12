extends AnimatedSprite2D

var jumping = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not is_playing():
		jumping = false
	
	if jumping:
		return
	
	if Input.is_action_just_pressed("ui_accept"):
		play("jump")
		jumping = true
	elif Input.is_action_pressed("ui_right"):
		flip_h = false
		play("run")
	elif Input.is_action_pressed("ui_left"):
		flip_h = true
		play("run")
	else:
		flip_h = true
		play("idle")
