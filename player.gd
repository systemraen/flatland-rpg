extends Polygon2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	process_input(delta)

func process_input(delta: float) -> void:	
	var left_pressed = Input.is_action_pressed("ui_left")
	var right_pressed = Input.is_action_pressed("ui_right")
	var up_pressed = Input.is_action_pressed("ui_up")
	var down_pressed = Input.is_action_pressed("ui_down")
	var move_x = 0
	var move_y = 0
	var move_amount = 2
	
	if left_pressed:
		move_x = -move_amount
	elif right_pressed:
		move_x = move_amount
	
	if up_pressed:
		move_y = -move_amount
	elif down_pressed:
		move_y = move_amount
	
	move_local_x(move_x)
	move_local_y(move_y)
