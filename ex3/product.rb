class Product
	attr_reader :name, :total

	def initialize(qty, name, price)
		@qty = qty.to_i
		@name = name.to_s
		@total = @qty * price.to_f
	end

	def add_tax(tax_rate)
		tax_amount = (@total * tax_rate)/100

		@total += tax_amount

		tax_amount
	end
	
	def to_s
		"#{@qty} #{@name}: #{@total}"
	end
end