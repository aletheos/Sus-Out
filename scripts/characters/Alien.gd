extends KinematicBody

func _ready():
	pass

func _process(delta):
	if Input.is_joy_button_pressed(0, 0):
		move_and_slide(Vector3(0,1,0))
	pass
