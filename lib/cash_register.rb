class CashRegister

  attr_accessor :total, :discount
  attr_reader :items, :last_transaction

  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      items << title
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount != nil
      @total -= @total / (100 / @discount)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end