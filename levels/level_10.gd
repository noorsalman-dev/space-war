extends Node2D

@onready var timer: Timer = $Timer
@onready var label3: Label = $AnimationPlayer3/Label
@onready var label: Label = $Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label.text = "%d:%02d" % [floor($Timer.time_left / 60), int($Timer.time_left) % 60]



func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://levels/won.tscn")
