require 'pry'

class CashRegister
  
  attr_accessor  :discount, :total, :items, :void_last_transaction
  attr_reader :apply_discount , :add_item
  
 
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
   
    new_total  =  price * quantity
    sum =  @total  +=  new_total
           sum
     quantity.times {@items << title}
     @last_transaction = new_total
  end
  
  def apply_discount
    
    if @discount
    
    bill_amount = @total
    
      discount = @discount.to_f / 100
    
         deduction = bill_amount * discount
          
           final_amount_returned = bill_amount - deduction
          
           @total = final_amount_returned.to_i
             
          "After the discount, the total comes to $#{@total}."
              
            else
                  "There is no discount to apply."
                  
                  
  
end
end


def void_last_transaction
  
 @total -= @last_transaction 
  
end


  



 
  
end