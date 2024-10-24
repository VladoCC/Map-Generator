extends Node2D

const margin = 10

var children: Array = []

func add_child_event(child):
	if !children.has(child):
		children.append(child)
		queue_redraw()

func _draw():
	draw_circle(Vector2.ZERO, 4, Color.WHITE_SMOKE)
	
	for child in children:
		var line = child.position - position
		var normal = line.normalized()
		line -= margin * normal
		var color = Color.GRAY
		draw_line(normal * margin, line, color, 2)
