class CashRegister
    attr_accessor :discount, :total
  
      def initialize(discount = 0)
          @total = 0
          @discount = discount
          @cart = []
      end
      
      def add_item(title, price, quantity = 1)
        item = {}
        item[:name] = title
        item[:price] = price
        item[:quantity] = quantity
        @cart << item
        @total += price * quantity
      end
      
      def apply_discount
        if discount == 0
          return "There is no discount to apply."
        end
        @total - @total * discount / 100
        return "After the discount, the total comes to #{@total}."
        end
      end
      
      
      def items
      item_names = []
      @cart.each do | item |
        for qty in 1..item[:quantity] 
          item_names << item[:name]
        end 
      end 
      item_names
    end
    
  end