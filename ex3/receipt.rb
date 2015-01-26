require_relative "./menu.rb"

class Receipt

	def self.run
	end
end

while true
	puts Menu.new("Enter New Receipt", "Exit")
	print "Enter a number: "
	
	gets.chomp.to_i == 1 ? Receipt.run : exit
end

# reg exp find a better of varifying input "\d\s[a-zA-z]+\s(at)\s[1-9]*(.)\d\d"