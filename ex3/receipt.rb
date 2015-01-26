require_relative "./product.rb"
require_relative "./tax.rb"
require_relative "./menu.rb"

class Receipt

	def self.run
		receipt = Receipt.new

		while true
			puts "Enter New Product(\# 'Product Name' at Price) or type total to display the grand total"
			product_input = gets.chomp

			if product_input == "total" 
				break 
			else
				receipt.add_product(product_input)
			end
		end

		puts receipt
	end

	def initialize
		@products = []
		@sales_tax =  Tax.new(0.1, ["Books", "Food", "Medical"])
		@import_tax = Tax.new(0.05, [])
		@tax_total = 0
		@grand_total = 0
	end
	
	def to_s
		"Sales Taxes: #{@tax_total}\nTotal: #{@tax_total + @grand_total}"
	end
end

while true
	puts Menu.new("Enter New Receipt", "Exit")
	print "Enter a number: "
	
	gets.chomp.to_i == 1 ? Receipt.run : exit
end

# reg exp find a better of varifying input "\d\s[a-zA-z]+\s(at)\s[1-9]*(.)\d\d"