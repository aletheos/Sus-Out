extends Node

var correctSequence :PoolByteArray
var guessedSequence :PoolByteArray
var respondSequence :PoolByteArray
var turnCounter :int

func funcName(arg1:int, arg2:int) -> int:
	var result : int = (arg1 + (arg1 * arg2)) / arg1 if arg1 != 0 else 1
	return result

func _ready():
	randomize()
	var rng :int
	for i in range(0, 3):
		rng = randi() % 6 + 1
		correctSequence.append(rng)
	turnCounter = 0

func _process(delta):
	if turnCounter < 15:
		#Guess the sequence
		if guessedSequence.size() < 3:
			if Input.is_action_just_pressed("guess_1"):
				guessedSequence.append(1)
			elif Input.is_action_just_pressed("guess_2"):
				guessedSequence.append(2)
			elif Input.is_action_just_pressed("guess_3"):
				guessedSequence.append(3)
			elif Input.is_action_just_pressed("guess_4"):
				guessedSequence.append(4)
			elif Input.is_action_just_pressed("guess_5"):
				guessedSequence.append(5)
			elif Input.is_action_just_pressed("guess_6"):
				guessedSequence.append(6)
			#Display guessed sequence(?)
			pass
		else:
			#Score the guessed sequence
			pass
			print(
				String(guessedSequence[0]) +
				String(guessedSequence[1]) +
				String(guessedSequence[2]) +
				" is " +
				(
					"correct!" if guessedSequence == correctSequence else
					"wrong!"
				)
			)
			
			#Advance to next turn unless victory
			if guessedSequence != correctSequence:
				$Alien/AnimationPlayer.play("ArmatureAction2", 1.0)
				guessedSequence.resize(0)
				turnCounter += 1
	else:
		#Game Over!
		if not $Alien/AnimationPlayer.is_playing():
			$Alien/AnimationPlayer.play("ArmatureAction1", 1.0)
			print("END OF THE WORLD")
