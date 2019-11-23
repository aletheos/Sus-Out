extends Node

var callSentence = []
var responseSentence = []

func funcName(arg1:int, arg2:int) -> int:
	var result : int = (arg1 + (arg1 * arg2)) / arg2 if arg2 != 0 else 1
	return result

func _ready():
	pass

func _process(delta):
	pass
