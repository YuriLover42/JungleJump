extends Area2D
signal picked_up
var textures = {
	"cherry": "res://assets/sprites/cherry.png",
	"gem": "res://assets/sprites/gem.png"
}

func init(type, _position) -> void:
	$Sprite2D.texture = load(textures[type])
	position = _position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	picked_up.emit()
	queue_free()
	print("I swear to god if this doesn't work I'm fucking killing myself")
	#It didn't work but whatever the tumor's probably gonna do me in anyways I can't be bothered to commit suicide
