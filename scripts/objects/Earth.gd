extends KinematicBody

const SECONDS_TO_TURN = 24

func _process(delta):
	$Sphere.rotate(Vector3.UP, delta * TAU / SECONDS_TO_TURN)
	pass
