require 'pry'

class CashRegister

    attr_accessor :total, :discount

    @@all_items = []

    def initialize(discount = 20)
        @total = 0
        @discount = discount
    end

    def add_item(title,price,qty = 1)
        @@all_items << title

        original_total = @total
        @total += price * qty
        original_total
    end

    # Not sure why this isn't running correctly
    def apply_discount
        # if @discount != 20
            discount_percent = ((100.0 - @discount.to_f) / 100.0)
            @total *= discount_percent
            return "After the discount, the total comes to $#{@total.to_i}."
        # else
        #     return "There is no discount to apply."
        # end
    end

    def items
        binding.pry
        @@all_items
    end

end
