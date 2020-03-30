class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(*discount)
    @total = 0
    @discount = discount[0]
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @quantity = quantity
    if quantity > 1
      @total += price * quantity
      until quantity == 0
        @items << item
        quantity -= 1
      end
    else
      @total += price
      @items << item
    end
  end

  def apply_discount
    if @discount
      @total *= ((100 - @discount) * 0.01)
      if @total.to_i == @total
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "After the discount, the total comes to $#{@total}."
      end
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= (@price * @quantity)
  end
end
