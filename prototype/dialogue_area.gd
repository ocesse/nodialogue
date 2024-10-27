extends Area3D

@export var text_key: String = ""

var area_active: bool = false

func _input(event):
	if area_active and event.is_action_pressed("ui_accept"):
		SignalBus.emit_signal("display_dialogue", text_key)
		
func _on_dialogueArea_area_entered(_area):
	area_active = true
	
func _on_dialogueArea_area_exited(_area):
	area_active = false
