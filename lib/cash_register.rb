class CashRegister
  
  attr_accessor :total, :items,  :last_transaction, :discount

  def initialize(discount = 0 )
    @total = 0 
    @items = [ ]
    @discount = discount
  end 

  def add_item(title, price, quantity = 1)
     @total += price * quantity
     quantity.times { @items << title }
     self.last_transaction = price * quantity
   end 
   
   def apply_discount
     if @discount != 0 
      @total = ((100.0 - @discount.to_f)/100 * @total).to_i 
      return "After the discount, the total comes to $#{@total}."
    else
     return "There is no discount to apply."
    end 
   end 
 
  def void_last_transaction
     @total -= self.last_transaction 
  end 



end
