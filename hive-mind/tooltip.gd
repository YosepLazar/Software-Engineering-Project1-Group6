extends Control

@onready var tooltipLab = $Panel/tooltipLabel
@onready var closeBut = $Panel/closeButton
@onready var arrow = $Arrow

var on_closed_callback = null


func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS
	closeBut.pressed.connect(closePressed)
	hide()
	
func showToolTip(text: String, target: Vector2, callback: Callable):
	tooltipLab.text = text
	on_closed_callback = callback
	
	var offset = Vector2(0, -80)
	global_position = target + offset
	
	arrow.global_position = target
	arrow.look_at(global_position)
	
	show()
	
func closePressed():
	hide()
	if on_closed_callback:
		on_closed_callback.call()
