class Rover
	attr_accessor :x, :y, :direction

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

	private

	def move
		case direction
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

	def turn(direction)
	end
end

rover1 = Rover.new(1, 2, "N")
rover1.read_instruction("LML")
puts "x: #{rover1.x} y: #{rover1.y}"


# 5.times do |input|
# 	puts "Enter a input"
# 	input = gets.chomp

# 	instruction = input.split(" ")

# 	if instruction.count == 1

# 	end
	
# end

