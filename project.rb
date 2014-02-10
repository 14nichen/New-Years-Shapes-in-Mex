def setup
	size 300,300
	background 0,0,255
end

def draw
	mexican 0,0
end

def mexican x=0,y=0
	while y<=255
		x=0
		while x<=255
			if y%3==0
				stroke 255-x,x,0
				fill 255-x,x,0
				rect x,y,45,45
			end
			# stroke 255-x,x,0
			# fill 255-x,x,0
			# rect x,y,45,45
			if y%3==1
				stroke 0,255-x,x
				fill 0,255-x,x
				rect x,y,45,45
			end
			if y%3==2
				stroke x,0,255-x
				fill x,0,255-x
				rect x,y,45,45
			end
			x=x+1
		end
		y=y+5
	end
	# while y=>0
	# 	x=0
	# 	while x<=255
	# 		if y%3==0
	# 			stroke 255-x,x,0
	# 			fill 255-x,x,0
	# 			rect x,y,45,45
	# 		end
	# 		# stroke 255-x,x,0
	# 		# fill 255-x,x,0
	# 		# rect x,y,45,45
	# 		if y%3==1
	# 			stroke 0,255-x,x
	# 			fill 0,255-x,x
	# 			rect x,y,45,45
	# 		end
	# 		if y%3==2
	# 			stroke x,0,255-x
	# 			fill x,0,255-x
	# 			rect x,y,45,45
	# 		end
	# 		x=x+1
	# 	end
	# 	y=y-1
	# end
end