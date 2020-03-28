=begin 
class CashRegister
    #1. WHat are the variables?
    #2. how are you going to initialize?
    #3. ho variable sinteract with one each other?
    
    
    attr_accessor :total ,:change, :discount, :items, :last_transaction
    #what are the variables??
    
    def initialize(discount=0)
      @total = 0
      discount =20
    end
  end
=end
 
  class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end