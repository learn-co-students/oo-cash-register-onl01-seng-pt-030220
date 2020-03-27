require 'pry'
class CashRegister
  attr_accessor :total, :discount, :price, :items, :quantity
  

  def initialize(discount = nil)
    @discount = discount.to_f
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @quantity = quantity
    self.total += price * quantity
    quantity.times { self.items << item }
  end

  def apply_discount
    if @discount > 0
      discount = (@discount / 100) * self.total
      self.total -= discount.to_i
      # @total = @total - ((@discount / 100) * @total).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end


  def void_last_transaction
    # if self.quantity > 1
    #   counter = 0
    #   while counter < quantity
    #     self.total -= self.price
    #     counter += 1
    #   end
    # else
    #   self.total -= self.price
    # end
    self.quantity.times{self.total -= self.price}
    # loop do 
    #   self.total -= self.price
    #   self.quantity -= 1
    #   if self.quantity < 1
    #     break
    #   end
    # end
  end

end


#divide discount by 100 (20 / 100) = dis
#multiply by total (dis * total)

costco = CashRegister.new()