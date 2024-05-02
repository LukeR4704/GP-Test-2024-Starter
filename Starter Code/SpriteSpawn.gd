extends RigidBody2D

var sprite_scene = preload("res://Sprite.tscn")

func _ready():
	pass

func _on_Button_pressed():
	spawn_sprite()

func spawn_sprite():
	var sprite_instance = sprite_scene.instance()
	get_parent().add_child(sprite_instance)
	sprite_instance.position = Vector2(randi_range(0, int(get_viewport().size.x)), -50)
	sprite_instance.linear_velocity = Vector2(0, 50)
