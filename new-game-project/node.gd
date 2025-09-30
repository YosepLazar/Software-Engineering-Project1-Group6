extends RigidBody2D
@export var connections: Array[NodePath] = []   # targets to connect to
@export var path_scene: PackedScene        # drag your TextureRect scene here

@onready var sprite = $AnimatedSprite2D
signal state_changed(new_state: bool)
var is_water: bool = false
func _ready():
	input_pickable = true  # allow clicks on the RigidBody2D
	for target_path in connections:
		var target = get_node_or_null(target_path)
		if target:
			var path = path_scene.instantiate()
			add_child(path)
			path.target = target
			target.state_changed.connect(_on_neighbor_changed)
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		_update_visual()
		emit_signal("state_changed", is_water)
		is_water = !is_water
func _update_visual() -> void:
	# however you show the state (color, sprite frame, etc.)
	if is_water:
			sprite.play("fillerpicwater")
	else:
			sprite.play("fillerpicdry") 

func _on_neighbor_changed(new_state: bool) -> void:
	# Here you decide the rule: 
	# simple version = just copy neighbor
	is_water = new_state
	_update_visual()
