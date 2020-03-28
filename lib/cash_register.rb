class CashRegister
  attr_accessor :total, :discount, :price, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  #def total
    #@total
  #end
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    @last_transaction = price * quantity
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
      @amount_off = (discount * price)/100
      @total -= @amount_off
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  #def items
    #@items
  #end
  def void_last_transaction
    @total -= @last_transaction
  end
end

