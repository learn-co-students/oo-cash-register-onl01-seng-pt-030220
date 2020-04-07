require 'pry'
class CashRegister
  
  attr_accessor :discount, :total, :items, :last_transaction
  
  def initialize (discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item (item, cost, quantity = 1)
    @cost = cost
    @total += cost * quantity
    @last_transaction = cost * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end
  
  def apply_discount
    if @discount > 0
       @discount = @discount/100.to_f
       @total = @total - (@total * (@discount))
       "After the discount, the total comes to $#{@total.to_i}."
      else
       "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_transaction
end 
end