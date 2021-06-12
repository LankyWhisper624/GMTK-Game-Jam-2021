extends Spatial

var speed = 0.25


# Called when the node enters the scene tree for the first time.
func _process(delta):
	var velocity = Vector3.ZERO
	if Input.is_action_pressed("move_left"):
		velocity.z += 1;
	if Input.is_action_pressed("move_right"):
		velocity.z -= 1;
	if Input.is_action_pressed("move_forward"):
		velocity.x -= 1;
	if Input.is_action_pressed("move_backward"):
		velocity.x += 1;
	if Input.is_action_pressed("move_up"):
		velocity.y += 1;
	if Input.is_action_pressed("move_down"):
		velocity.y -= 1;
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed;

	translate(velocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
