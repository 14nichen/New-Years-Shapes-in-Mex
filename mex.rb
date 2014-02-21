def setup
	size 300,300
end

def draw
	no_stroke
	fill(mouse_x,mouse_y,0)
	rect(mouse_x,mouse_y,45,45)
end