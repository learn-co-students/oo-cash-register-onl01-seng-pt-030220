require 'Pry'
class CashRegister
    attr_accessor :discount, :previous_total
    attr_reader :total, :items

    def initialize(discount = 0)
        self.total = 0
        self.discount = discount
        self.items = nil
    end

    def total=(total)
        self.previous_total = @total
        @total = total
    end

    def items=(item)
        if @items == nil
            @items = []
        else
            @items << item
        end
        
    end
    
    def add_item(item, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
            self.items = item
        end
    end

    def apply_discount
        if self.discount > 0
            discount_percent = (self.discount.to_f / 100.0)
            self.total = self.total - (self.total * discount_percent)
            "After the discount, the total comes to $#{self.total.round}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.previous_total.to_f
    end

end 
