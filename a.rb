class Color

	def initialize x,y,size,hue,speed
		@x=x
		@y=y
		@size=size
		@hue=hue
		@speed=speed
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
	size 400,160
	color_mode(HSB, 360)
	@line=[]
	@numline=1
	@numline.times do
		@line<<Color.new(0,0,40,0,1)
		@line<<Color.new(0,40,40,120,2)
		@line<<Color.new(0,80,40,240,3)
		@line<<Color.new(0,120,40,360,4)
		
	end
end

def draw
	@line.each do |line|
		line.show
	end
end