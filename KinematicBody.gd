extends KinematicBody


var speed = 0.25;

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
#    translation.y = 0
#    translation.x = 20
    pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
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
    move_and_slide(velocity);
