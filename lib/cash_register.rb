require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :price, :items, :last_transaction
  
  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @title = title 
    @price = price
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
    @last_transaction = price * quantity
    quantity.times{@items << title}
  end
  
  def apply_discount
    if @discount != 0
      self.total *= (1 - (@discount / 100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end
  
end
