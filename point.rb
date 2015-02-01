class Point
	attr_accessor :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	def add_x_y(which_point_to_add, amount_add_to)
		which_point_to_add == :x ? @x += amount_add_to : @y += amount_add_to
	end

	def subtract_x_y(which_point_to_subtract, amount_subtract_to)
		which_point_to_subtract == :x ? @x -= amount_subtract_to : @y -= amount_subtract_to
	end
	
	def to_s
		"#{x} #{y}"
	end
end