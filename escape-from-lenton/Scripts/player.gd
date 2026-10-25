extends CharacterBody3D


const SPEED = 15.0
const JUMP_VELOCITY = 14
var keyboard_direction = 0
var phone_direction = 0
const UP = Vector3(0, -1, 0)
var angle = 0
@onready var net = get_tree().get_first_node_in_group("network")

@export var health = 100

@export var throttle = 0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta * 2

	# Handle jump.
	if is_on_floor() and Input.is_action_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	keyboard_direction = (transform.basis * Vector3(0, 0, input_dir.y)).normalized()
	
	phone_direction = (transform.basis * Vector3(0, 0, throttle)).normalized()
	
	rotate_y(-input_dir.x * delta * 5)
	
	if keyboard_direction:
		velocity.x = keyboard_direction.x * SPEED
		velocity.z = keyboard_direction.z * SPEED
	elif phone_direction:
		velocity.x = phone_direction.x * SPEED
		velocity.z = phone_direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
	
	move_and_slide()
	
	
	
	
