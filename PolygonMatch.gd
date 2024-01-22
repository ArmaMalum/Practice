extends StaticBody2D

@onready var polygon2D = $Polygon2D
@onready var collisionPolygon2D = $CollisionPolygon2D
# Called when the node enters the scene tree for the first time.
func _ready():
	collisionPolygon2D.polygon = polygon2D
