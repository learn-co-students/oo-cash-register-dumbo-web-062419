class CashRegister

    attr_accessor :total, :discount
    attr_reader :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        quantity.times do 
            @items << item
        end
        @price = price
        @total += (price * quantity)
    end

    def apply_discount
        if @total == 0
            return "There is no discount to apply."
        else
            @total = @total - ((@total * @discount) / 100)
        end
        return "After the discount, the total comes to $#{@total}."
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @price
    end

end