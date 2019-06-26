require 'pry'

class CashRegister

    attr_accessor :total, :discount

    def initialize(discount = 20)
        @total = 0
        @discount = discount
    end

    def add_item(title,price,qty = 1)
        original_total = @total
        @total += price * qty
        original_total
    end

    def apply_discount
        discount_percent = ((100.0 - @discount.to_f) / 100.0)
        @total *= discount_percent
        # binding.pry
    end

end
