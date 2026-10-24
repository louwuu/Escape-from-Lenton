extends CharacterBody3D


const SPEED = 1
const JUMP_VELOCITY = 4.5

var velocity_max = 5

@onready var player = get_tree().get_first_node_in_group("player")


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	velocity += (player.position - position).normalized() * SPEED
	
	if (velocity.y > 0) :
		velocity.y = 0 

	#velocity.x = move_toward(velocity.x, 0, SPEED)
	#velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
