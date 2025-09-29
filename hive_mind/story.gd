extends Node2D

@onready var background: TextureRect = $Background

var bg_1 = preload("res://art/Story/1.webp")
var bg_2 = preload("res://art/Story/2.png")
var bg_3 = preload("res://art/Story/3.png")
var bg_4 = preload("res://art/Story/4.png")
var bg_5 = preload("res://art/Story/5.png")
var bg_6 = preload("res://art/Story/6.png")
var bg_7 = preload("res://art/Story/7.png")
var bg_dry = preload("res://art/Story/dried_lands.png")

func _ready() -> void:
	# Call dialogue automatically when scene starts
	_dialogue1()
	await get_tree().create_timer(3).timeout
	_dialogue2()
	await get_tree().create_timer(3).timeout
	_dialogue3()
	await get_tree().create_timer(3).timeout
	_dialogue4()
	await get_tree().create_timer(3).timeout
	_dialogue5()
	await get_tree().create_timer(3).timeout
	_dialogue6()
	await get_tree().create_timer(3).timeout
	_dialogue7()
	await get_tree().create_timer(3).timeout
	_dialogue8()
	await get_tree().create_timer(3).timeout
	_dialogue9()
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://Main.tscn")


func _dialogue1() -> void:
	# Pass a callback to be called when the dialogue finishes
	DialogueManager.show_example_dialogue_balloon(
		load("res://dialogue/story1.dialogue"),
		"start",
		)
	background.texture = bg_1
	

func _dialogue2() -> void:
	# Pass a callback to be called when the dialogue finishes
	DialogueManager.show_example_dialogue_balloon(
		load("res://dialogue/story2.dialogue"),
		"start",
		)
	background.texture = bg_2

func _dialogue3() -> void:
	# Pass a callback to be called when the dialogue finishes
	DialogueManager.show_example_dialogue_balloon(
		load("res://dialogue/story3.dialogue"),
		"start",
		)
	background.texture = bg_3
	

func _dialogue4() -> void:
	# Pass a callback to be called when the dialogue finishes
	DialogueManager.show_example_dialogue_balloon(
		load("res://dialogue/story4.dialogue"),
		"start",
		)
	background.texture = bg_4
	
func _dialogue5() -> void:
	# Pass a callback to be called when the dialogue finishes
	DialogueManager.show_example_dialogue_balloon(
		load("res://dialogue/story5.dialogue"),
		"start",
		)
	background.texture = bg_5
func _dialogue6() -> void:
	# Pass a callback to be called when the dialogue finishes
	DialogueManager.show_example_dialogue_balloon(
		load("res://dialogue/story6.dialogue"),
		"start",
		)
	background.texture = bg_6
func _dialogue7() -> void:
	# Pass a callback to be called when the dialogue finishes
	DialogueManager.show_example_dialogue_balloon(
		load("res://dialogue/story7.dialogue"),
		"start",
		)
	background.texture = bg_7

func _dialogue8() -> void:
	# Pass a callback to be called when the dialogue finishes
	DialogueManager.show_example_dialogue_balloon(
		load("res://dialogue/story8.dialogue"),
		"start",
		)
	background.texture = bg_dry

func _dialogue9() -> void:
	# Pass a callback to be called when the dialogue finishes
	DialogueManager.show_example_dialogue_balloon(
		load("res://dialogue/story9.dialogue"),
		"start",
		)
	background.texture = bg_dry
