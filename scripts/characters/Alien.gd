extends KinematicBody

func _ready():
	pass

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		move_and_slide(Vector3(0,1,0))
	pass
