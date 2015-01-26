class Tax
	attr_reader :tax_rate, :exempt

	def initialize(tax_rate_in_precent, exempt)
		@tax_rate = tax_rate_in_precent
		exempt = []

		exempt.each { |type| @exempt << type }
	end
	
	def +(other_tax)
		@tax_rate + other_tax.tax_rate
	end
end