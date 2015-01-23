class Rover
	attr_reader :x, :y, :direction

	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
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
		"#{@x} #{@y} #{@direction}"
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
			else
				nil
		end
	end

	def turn(instruction)
		if instruction == "L"
			case @direction
				when "N"
					@direction = "W"
				when "E"
					@direction = "N"
				when "S"
					@direction = "E"
				when "W"
					@direction = "S"
			end
		elsif instruction == "R"
			case @direction
				when "N"
					@direction = "E"
				when "E"
					@direction = "S"
				when "S"
					@direction = "W"
				when "W"
					@direction = "N"
			end
		end
	end
end

rover1 = Rover.new(1, 2, "N")
rover1.read_instruction("LMLMLMLMM")
puts rover1

rover2 = Rover.new(3, 3, "E")
rover2.read_instruction("MMRMMRMRRM")
puts rover2