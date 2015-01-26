class Product
	attr_reader :name, :total

	def initialize(optional = {})
		@qty   = optional[:qty].to_i || 0
		@name  = optional[:name].to_s || 0
		@total = (@qty * optional[:price].to_f) || 0.00
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