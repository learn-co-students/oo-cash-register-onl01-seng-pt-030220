class CashRegister

  attr_accessor :total, :discount, :items, :last_item_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    @last_item_price = price * quantity
    while quantity.positive?
      @items << item
      quantity -= 1
    end
end

def apply_discount
  if @discount == 0
    "There is no discount to apply."
  else
    @total -= @total * @discount / 100
    "After the discount, the total comes to $#{@total}."
  end
end

def void_last_transaction
  @total -= @last_item_price
end
  end
