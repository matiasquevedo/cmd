class Sale < ApplicationRecord
	has_many :portions
	before_create :init_total

	def set_total
		self.portions.each do |p|
			@t = @t.to_f + (p.quantity * p.food.price.to_f)			
		end
		self.update(total: self.total.to_f + @t.to_f)
				
	end

	private
	def init_total
		self.total = 0
	end
end
