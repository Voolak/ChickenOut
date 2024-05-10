extends Node


func _ready():
	for i in self.get_children():
		i.add_to_group("wall")
