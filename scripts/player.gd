extends CharacterBody2D

@export var Chick : PackedScene

var speed = 400  # speed in pixels/sec

func _physics_process(delta):
	look_at(get_global_mouse_position())
	
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	
	if Input.is_action_just_pressed("shoot"):
		shoot()

	move_and_slide()

func shoot():
	var b = Chick.instantiate()
	owner.add_child(b)
	b.transform = $Marker2D.global_transform
