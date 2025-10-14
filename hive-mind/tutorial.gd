extends Node2D

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS
	var steps = [
		{
			"text": "Click this button to start!",
			"target": $CanvasLayer/tutBut
		},
	]

	TooltipManager.startTutorial(steps)
