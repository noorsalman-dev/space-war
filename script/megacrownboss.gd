extends CharacterBody2D

@onready var progress_bar: ProgressBar = $ProgressBar
var health = 200000000





# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_area_entered(area: Area2D) -> void:
	progress_bar.value = health
	health = health -1
	if health <= 0:
		get_tree().change_scene_to_file("res://levels/bosswin.tscn")
