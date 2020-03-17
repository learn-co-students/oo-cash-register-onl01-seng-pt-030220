class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @last_transaction = 0
  end
  
  def add_item(title, price, quantity = 1)
    transaction_amount = price * quantity
    @total += transaction_amount
    quantity.times { @items << title }
    @last_transaction = transaction_amount
  end 
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else 
      discount = @discount.to_f / 100
      @total -= (@total * discount)
      return "After the discount, the total comes to $#{@total.to_i}."
    end 
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end 
  
 
end 
