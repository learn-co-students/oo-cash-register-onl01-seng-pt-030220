class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @price = price * quantity
    quantity.times do
      @items << title
    end
  end
  
  def apply_discount
    if @discount > 0
      @new_total = (@price * discount)/100
      @total -= @new_total
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @price 
  end
end