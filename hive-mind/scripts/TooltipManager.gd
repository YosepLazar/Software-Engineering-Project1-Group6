extends Node2D

var toolScene = preload("res://tooltip.tscn")
var currentTip: Control = null
var currentStep = 0
var tutorialSteps = []

func startTutorial(steps: Array):
	currentStep = 0
	tutorialSteps = steps
	_show_current_step()
	
func _show_current_step():
	if currentStep >= tutorialSteps.size():
		print("Tutorial Finished")
		return
		
	var step = tutorialSteps[currentStep]
	var text = step["text"]
	var target_node = step["target"]
	var tooltip_position = target_node.get_global_position()

	if currentTip:
		currentTip.queue_free()

	currentTip = toolScene.instantiate()
	get_tree().current_scene.add_child(currentTip)

	get_tree().paused = true
	#currentTip.pause_mode = Node.PAUSE_MODE_PROCESS

	currentTip.show_tooltip(text, tooltip_position, func():
		get_tree().paused = false
		currentStep += 1
		_show_current_step()
	)
