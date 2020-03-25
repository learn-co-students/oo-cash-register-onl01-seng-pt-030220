require 'pry'

class CashRegister

  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(discount = 0) #initializing a new cash register to kee track of the total spend, list of items
    @total = 0                 #as well as the discount if there is one
    @discount = discount       #sets up the individual items
    @items = []
  end

  def add_item(item, price, quantity = 1) #scanning a new item incrases the total by the the price*quant
    @total += price * quantity            #adds each individual item to the items array, accounting for the quanitiy
    quantity.times do
      items << item
    end
    @last_transaction = price * quantity  #keeps track of the latest transaction incase it needs to be voided
  end

  def apply_discount                                      #for employees
    if discount != 0
      @total = (total * ((100 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= last_transaction

    binding.pry
  end



end
