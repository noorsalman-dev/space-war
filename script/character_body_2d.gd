extends CharacterBody2D





var health = 10


const SPEED = 140.0
var current_dir = "none"
var hight = false
var highte = false
var att = false
var ras = false
var b = false
@onready var anim: AnimatedSprite2D = $AnimatedSprite2D
@onready var timer: Timer = $Timer
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var take_hit: Area2D = $take_hit
@onready var collisdddion_shape_2d: CollisionShape2D = $ax/CollisionShape2D
@onready var collision_eeshape_2d: CollisionShape2D = $at/CollisionShape2D
@onready var collidddsion_shape_2d: CollisionShape2D = $wa/CollisionShape2D
@onready var collixsion_shape_2d: CollisionShape2D = $b/CollisionShape2D
@onready var collisiontrtt_shape_2d: CollisionShape2D = $ras/CollisionShape2D
@onready var collision_shape_2d: CollisionShape2D = $take_hit/CollisionShape2D
@onready var progress_bar: ProgressBar = $ProgressBar

func _physics_process(delta) : 
	player_movement(delta)

func player_movement(delta):
	
	if Input.is_action_just_pressed("ui_accept"):
		hight == true
	
	if Input.is_action_pressed("ui_right"):
		current_dir = "right"
		play_anim(1)
		velocity.x = SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		current_dir = "left"
		play_anim(1)
		velocity.x = -SPEED
		velocity.y = 0
	else:
		play_anim(0)
		velocity.y = 0
		velocity.x = 0

	move_and_slide()


func play_anim(movement):
	pass
