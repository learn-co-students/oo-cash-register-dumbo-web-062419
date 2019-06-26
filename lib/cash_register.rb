class CashRegister

	attr_accessor :discount, :total, :last_trans
	attr_reader :items

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
		@last_trans = 0
	end

	# take an item name, item price and item quantity
	# add the item a quant amount of times to the items array, add the price accordingly to total
	def add_item(name, price, quant = 1)
		quant.times do
			@items << name
		end
		item_total = price * quant.to_f
		self.total += item_total
		self.last_trans = item_total
	end

	def apply_discount
		if self.discount != 0
			self.total *= (1.00 - (self.discount.to_f / 100.0))
			str_total = self.total.to_s.include?(".0") ? self.total.to_s[0...self.total.to_s.length - 2] : self.total
			"After the discount, the total comes to $#{str_total}."
		else
			"There is no discount to apply."
		end
	end

	def void_last_transaction
		self.total -= self.last_trans
	end
end
