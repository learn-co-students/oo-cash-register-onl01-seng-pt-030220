
# Void the last transaction

# Hint #1: Keep in mind that to call an instance method inside another instance method, we use the self keyword to refer to the instance 
# on which we are operating. For example:

# Hint #2: The apply_discount requires some knowledge about working with an Integer versus a Float in Ruby. Note that 100.class returns Integer
# while 100.0.class returns Float. Ruby provides methods for changing an object of type Integer to a Float and vice versa.

# Hint #3: The void_last_transaction method will remove the last transaction from the total. You'll need to make an additional attribute accessor
# and keep track of that last transaction amount somehow. In what method of the class are you working with an individual item?
# class Person
 
require 'pry'
class CashRegister
                    
    attr_accessor :total, :discount #builds my readers and writers
    attr_reader :price, :items #builds my writers

    # instantiates my CashRegister instances
    def initialize(discount = 0) # optionally takes an employee discount on initialization
        @total = 0 
        @discount = discount
        @price = []
        @items = []
    end

    # Add items of varying quantities and prices
    def add_item(title, price, quantity = 1) #accepts a title, a price, an optional quantity and  increases the total 
        self.total += price * quantity
            quantity.times do 
                @items << title 
            end
        self.price << price * quantity
    end

    # Calculate discounts
    def apply_discount
        if self.discount > 0
            self.total = self.total * (1.0 - discount.to_f/100)
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total = self.total - price.last
    end
end