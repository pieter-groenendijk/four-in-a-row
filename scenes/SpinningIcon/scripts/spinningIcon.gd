extends Sprite2D

var speed = 400
var angularSpeed = PI;

func _init() -> void:
	print("Hello, world!")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	processRotation(delta)
	processPosition(delta)

func processRotation(delta: float) -> void:
	rotation += angularSpeed * delta

func processPosition(delta: float) -> void:
	var velocity = Vector2.UP.rotated(rotation) * speed
	
	position += velocity * delta
