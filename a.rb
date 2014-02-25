class Color

	def initialize x,y,size,speed
		@x=x
		@y=y
		@size=size
		@speed=speed
		@hue=x
	end

	def show
		stroke @hue,360,360,100
		fill @hue,360,360,100
		rect @x,@y,@size,@size
		@x=(@x+@speed)%360
		@hue=@x
	end

end

def setup
	size 400,400
	color_mode(HSB, 360)
	@line=[]
	@numline=10
	@y=0
	@speed=1
	@numline.times do
		@line<<Color.new(0,@y,40,@speed)
		@y+=40
		@speed+=1
	end
end

def draw
	@line.each do |line|
		line.show
	end
end