extends Node2D

# Fixed grid size (always 8x8)
const width  := 8
const height := 8

@export var line_color: Color = Color(0,0,0,1)
@export var line_width: float = 3.0

var cell_w: float
var cell_h: float

func _ready() -> void:
	_update_cells()
	get_viewport().size_changed.connect(_on_resize)
	queue_redraw()

func _on_resize() -> void:
	_update_cells()
	queue_redraw()

func _update_cells() -> void:
	var screen_size: Vector2 = get_viewport_rect().size
	cell_w = screen_size.x / float(width)
	cell_h = screen_size.y / float(height)

func _draw() -> void:
	var total_w := cell_w * width
	var total_h := cell_h * height

	# draw square grid
	for row in range(height + 1):
		var y := row * cell_h
		draw_line(Vector2(0, y), Vector2(total_w, y), line_color, line_width)
	for col in range(width + 1):
		var x := col * cell_w
		draw_line(Vector2(x, 0), Vector2(x, total_h), line_color, line_width)

	# diagonals alternating
	for row in range(height):
		for col in range(width):
			var x0 := col * cell_w
			var y0 := row * cell_h
			var tl := Vector2(x0, y0)
			var tr := Vector2(x0 + cell_w, y0)
			var bl := Vector2(x0, y0 + cell_h)
			var br := Vector2(x0 + cell_w, y0 + cell_h)

			if (row + col) % 2 == 0:
				draw_line(tl, br, line_color, line_width)  
			else:
				draw_line(tr, bl, line_color, line_width)  
				
