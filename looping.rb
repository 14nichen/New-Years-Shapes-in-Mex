def setup
	
size(400,400)
background 255,0,0

end

def draw
# fill 0,255,0
# ellipse(mouse_x,mouse_y,75,75)
# fill 0,0,255
# rect(mouse_y,mouse_x,75,75)
# fill 255,0,0
# rect(400-mouse_x,400-mouse_y,75,75)
# fill 255
# ellipse(400-mouse_y,400-mouse_x,75,75)
	50.times do
		draw_ellipse
		x=rand(100)-50
		y=rand(100)-50
		r=rand(255)
		g=rand(255)
		b=rand(255)
		draw_ellipse(x,y,r,g,b)
	end
end

def draw_ellipse xx=0,yy=0,r=0,g=0,b=0
	fill r,g,b
	ellipse(mouse_x+xx,mouse_y+yy,60,100)
	fill 255-r,255-g,255-b
	ellipse(mouse_y+yy,mouse_x+xx,100,60)

end