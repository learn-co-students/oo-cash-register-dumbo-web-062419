class CashRegister

  attr_accessor :total, :discount, :items_array

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items_array = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    counter = 0
    while counter < quantity
      items_array << title
      counter += 1
    end
  end

  def apply_discount
    @discount = @discount/100.to_f
    if @discount > 0
      @total = @total - (@total * (@discount))
     "After the discount, the total comes to $#{@total.to_i}."
    else
     "There is no discount to apply."
    end
  end

  def items
    items_array
  end

  def void_last_transaction
    @total = 0
  end

end
