
class CashRegister

    attr_accessor :total, :discount, :quantity


    def initialize(discount=0)
        @items = []
        @total = 0
        @discount = discount
    end

    def total
        @total
    end

    def add_item(title, price, quantity=1)
        self.total += price 
        quantity.times do 
            @items << title 
        end
       
    end

    def apply_discount
        
    end

    
end