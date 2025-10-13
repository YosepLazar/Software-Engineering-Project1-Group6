extends Node2D

func _ready():
	var steps = [
		{
			"text": "Click this button to start!",
			"target": $CanvasLayer/tutBut
		},
	]

	TooltipManager.startTutorial(steps)
