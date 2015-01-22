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
	end

	def turn(direction)
	end
end

rover1 = Rover.new(1, 2, "N")
rover1.read_instruction("LML")

# 5.times do |input|
# 	puts "Enter a input"
# 	input = gets.chomp

# 	instruction = input.split(" ")

# 	if instruction.count == 1

# 	end
	
# end

