extends Node2D

const DESTROY_DELAY = 1
var setScore = 0

func _ready():
	if (setScore >=50):
		get_node("Label").set_scale(Vector2(1.2,1.2))
	elif (setScore >=100):
		get_node("Label").set_scale(Vector2(1.4,1.4))
	elif (setScore >= 200):
		get_node("Label").set_scale(Vector2(1.6,1.6))
	elif (setScore >=500):
		get_node("Label").set_scale(Vector2(1.8,1.8))
	elif (setScore >=1000):
		get_node("Label").set_scale(Vector2(2,2))
		
	get_node("Label").set_text(str(setScore))
	get_node("anim").play("start")
	get_node("destroyDelay").set_wait_time(DESTROY_DELAY)

func _on_destroyDelay_timeout():
	queue_free()
