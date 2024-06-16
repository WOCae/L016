extends Node2D

func _ready() -> void:
	_LineGene($Path2D,-100)
	
func _process(delta: float) -> void:
	$Path2D/PathFollow2D.progress_ratio += 0.1 * delta


func _LineGene(pathName,layZ):
	var line = Line2D.new()
	line.z_index = layZ
	for point in pathName.curve.get_baked_points():
		line.add_point(point)
	add_child(line)
