class Tax
	attr_reader :tax_rate, :except_type

	def initialize(tax_rate_in_precent, except_type)
		@tax_rate = tax_rate_in_precent
		except_type = []

		except_type.each { |type| except_type << type }
	end
	
	def +(other_tax)
		@tax_rate + other_tax.tax_rate
	end
end