require 'pry'
class CashRegister

    attr_accessor :total, :discount, :quantity


    def initialize(discount=0)
        @items = []
        @prices = []
        @total = 0
        @discount = discount
    end

    def prices
        @prices
    end

    def total
        @total
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity 
        quantity.times do 
            @items << title 
        end
       @prices << price*quantity
    end

    def apply_discount
        if discount > 0
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
        @total = self.total-self.prices.last
        #binding.pry
    end
  end
