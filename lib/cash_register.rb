class CashRegister 
  attr_accessor :discount, :total #a macro that defines the setter and getter for the method. I can now call these methods on instances of the CashRegister class; not only that, I can implement the variables within other methods. Why was this done? Why was the discount and the total chosen as the macro? Refactoring, abstraction, and simplicity, the entire class' functionality can be built off the application of these two. 

  def initialize(discount=0) #discount is 0 to start.
    @discount = discount 
    @total = 0 #same concept with discount, nothing to start. Try your best to conceptualize real world model.
    @items = [] #this is an important step because it ties into the real world model of things. The number of items in my "cart" is empty before the cashier charges anything.
    @last_item = [] 
  end 
  
  def apply_discount
    if discount != 0 #this could be written many ways, this is a great shorthand for it.
      @total -= (@total * (@discount / 100.to_f))
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end 
  end 

  #def apply_discount
   # if discount = 0
     # return "There is no discount applied."
   # end
   # if discount != 0
    #  @total = total * (@discount/100.to_f)
    #  return "Discount is applied. The price for the items is #{price} after discount!"
   # end
  #another possible way that I figure would work.
  
  def add_item(title, price, quantity=1) #3 arguments, this is dope. It bypasses the 3 arguments because of quantity being explicitly defined.
    @total += price * quantity 
    quantity.times do 
      @items << title 
    end 
    @last_item = price * quantity 
  end 
  
  def items 
    @items 
  end 
  
  def void_last_transaction 
     @items.delete_at(-1)
    self.total = self.total - @last_item
  end 
end 

list = CashRegister.new(20) #=>#<CashRegister:0x005616084063b0 @discount=20, @total=0>
list.add_item("eggs", 1.50, 3) #=> 4.50
list.add_item("skirt steak", 7.99) #=> 7.99 
list.add_item("apple pie", 3.99, 2) #=> 7.98
list.total #=> 20.47
list.items #=> ["eggs", "eggs", "eggs", "skirt steak", "apple pie", "apple pie"]
list.apply_discount #=> "After the discount, the total comes to $16."
list.void_last_transaction
list.items  #=> ["eggs", "eggs", "eggs", "skirt steak", "apple pie"]
list.total #=> 8.02
list #=> #<CashRegister:0x0055d3156eb598 @discount=20, @total=8.395999999999997, @items=["eggs", "eggs", "eggs", "skirt steak", "apple pie"], @last_item=7.98>