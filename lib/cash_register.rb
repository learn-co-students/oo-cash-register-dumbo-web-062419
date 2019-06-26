class CashRegister
    attr_accessor  :total, :discount, :list
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @list = []
    end

    def add_item(title, price, qty=1)
        original_total = self.total
        self.total += price * qty
        counter = 0
        while qty > counter
            @list << title
            counter += 1
        end
        
        original_total
    end

    def apply_discount
        if discount != 0    
        discounted_total = ((100.0 - self.discount.to_f)/100.0).to_f
            @total *= discounted_total
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end
    
    def items
        @list
    end

    def void_last_transaction
        @total = 0
    end
end


