extends StaticBody3D


@onready var Player = get_tree().get_first_node_in_group("player")

var isin = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(isin == true):
		Player.health -= 25 * delta;


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body == Player:
		isin = true


func _on_area_3d_body_exited(body: Node3D) -> void:
	if body == Player:
		isin = false
