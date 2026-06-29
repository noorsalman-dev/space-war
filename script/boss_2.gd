extends CharacterBody2D
@onready var progress_bar: ProgressBar = $ProgressBar

var health =10
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progress_bar.value=health


func _on_area_2d_area_entered(area: Area2D) -> void:
	health =health-1
	if health<=0:
		queue_free()
		print("hhhhhhhhhhhhhhhh")
