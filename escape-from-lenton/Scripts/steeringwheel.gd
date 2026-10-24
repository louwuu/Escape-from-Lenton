extends Sprite2D

var leftState = false
var rightState = false

func _process(delta: float) -> void:


		
	if(leftState == true):
		rotation -=0.025
		
	if(rightState == true):
		rotation +=0.025
	

func _input(event: InputEvent) -> void:
	
	if(event.is_action_pressed("ui_left")):
		leftState = true
	if(event.is_action_released("ui_left")):
		leftState = false
		
	if(event.is_action_pressed("ui_right")):
		rightState = true
	if(event.is_action_released("ui_right")):
		rightState = false
