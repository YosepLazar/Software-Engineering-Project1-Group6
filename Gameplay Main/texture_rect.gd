extends TextureRect

var target: Node2D        # assigned by parent
var parent_node: Node2D
func _process(delta: float) -> void:
	if not target:
		return

	var parent_pos = get_parent().global_position
	var target_pos = target.global_position
	var diff = target_pos - parent_pos

	# Rotate to face the target
	rotation = diff.angle()

	# Scale X so bar length matches distance
	var base_width = texture.get_width() if texture else 1
	var new_scale = scale
	new_scale.x = diff.length() / base_width
	scale = new_scale

	global_position = parent_pos
