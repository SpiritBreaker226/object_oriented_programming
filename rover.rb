require_relative "./point"

class Rover
	def initialize(optional = {})
		@point_at = Point.new(optional[:x].to_i, optional[:y].to_i)
		@direction = optional[:direction].to_s || "N"
	end

	def read_instruction(instructions)
		instructions.each_char do |instruction| 
			if instruction == "M"
				move
			elsif
				turn(instruction)
			end
		end
	end

	def to_s
		"#{@point_at} #{@direction}"
	end

	private

	def move
		case @direction
			when "N"
				@y += 1
			when "E"
				@x += 1
			when "S"
				@y -= 1
			when "W"
				@x -= 1
		end
	end

	def turn(instruction)
		if instruction == "L"
			@direction = 
				case @direction
					when "N" then "W"
					when "E" then "N"
					when "S" then "E"
					when "W" then "S"
				end
		elsif instruction == "R"
			@direction = 
				case @direction
					when "N" then "E"
					when "E" then "S"
					when "S" then "W"
					when "W" then "N"
				end
		end
	end
end

output = ""

puts "Enter the size of the plateau"
x_y_plateau = gets.chomp.split(" ")

2.times do 
	puts "Enter the starting position for the rover"
	x_y_d_rover = gets.chomp.split(" ")

	puts "Enter the instructions for the rover using either L R or M, all together"
	rover_instructions = gets.chomp

	rover = Rover.new({
		x: x_y_d_rover[0],
		y: x_y_d_rover[1],
		direction: x_y_d_rover[2]
	})

	rover.read_instruction(rover_instructions)
	output += rover.to_s << "\n"
end
