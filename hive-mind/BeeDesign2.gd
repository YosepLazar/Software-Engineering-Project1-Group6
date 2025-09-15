extends AnimatedSprite2D

var speed = 100

func _process(delta: float) -> void:
	if Input.action_press("ui_right"):
		position.x += speed*delta
