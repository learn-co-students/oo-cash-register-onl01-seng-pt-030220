require 'pry'

class CashRegister
  
  attr_accessor  :discount, :total, :add_item
  attr_reader :apply_discount
  
 
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
   
    new_total  =  price * quantity
    sum =  @total  +=  new_total
           sum
    
  end
  
  def apply_discount
    
    bill_amount = @total.to_f
    
      discount = @discount.to_f / 100
    
         deduction = bill_amount * discount
          
           final_amount_returned = @total - deduction
          
              @total = final_amount_returned
                  puts "After the discount, the total comes to $#{@total}."

  end 


  



 
  
end