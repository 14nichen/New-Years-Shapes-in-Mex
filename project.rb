def setup
	size 300,300
	background 0,0,255
	@y=0
end

def draw
	if(@y==255)
		@y=0
	else
		@y+=5
	end
	mexican @y
	# physics 255
end

def mexican y=0
	# while y<=255
		x=0
		# sleep 1
		while x<=255
			if y%3==0
				stroke 255-x,x,0
				fill 255-x,x,0
				rect x,y,45,45
			elsif y%3==1
				stroke 0,255-x,x
				fill 0,255-x,x
				rect x,y,45,45
			elsif y%3==2
				stroke x,0,255-x
				fill x,0,255-x
				rect x,y,45,45
			end
			x=x+1
		end
		# if(y%255<=255)
		# 	puts "What"
		# 	y=y+5
		# else
		# 	y=y%255
		# end
	end
end

# def physics y=0
# 	while y>=0
# 		x=0
# 		while x<=255
# 			if y%3==0
#  				stroke 255-x,x,0
#  				fill 255-x,x,0
#  				rect x,y,45,45
#  			elsif y%3==1
#  				stroke 0,255-x,x
#  				fill 0,255-x,x
#  				rect x,y,45,45
#  			elsif y%3==2
#  				stroke x,0,255-x
#  				fill x,0,255-x
#  				rect x,y,45,45
#  			end
#  			x+=1
# 		end
# 		y-=5
# 	end
# end