require "pry"
class CashRegister 
attr_accessor :total, :title, :price, :quantity, :discount, :items

def initialize (discount = nil)
    @total = total 
    @total = 0 
    @discount = discount
    @item_array = [] 
    @tracking_array = []
end

def add_item(title, price, quantity = 1)
tracker = (price * quantity)
@total = @total + tracker
quantity.times {|a| @item_array << title} 
@tracking_array << tracker
end

def apply_discount
if self.discount != nil 
@total = (@total*0.8)  
"After the discount, the total comes to $#{@total.to_i}."
else 
"There is no discount to apply."
end
end

def items
@item_array
end 


def void_last_transaction 
@total = @total - @tracking_array.last 
end


end