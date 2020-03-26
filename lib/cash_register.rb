
class CashRegister

    attr_accessor :total :discount :quantity

    def initialize(discount=0)
        @total = 0
        @discount = discount
    end

    def total
        @total
    end

    def add_item(title, price, quantity=0)
        self.total += price 
        title
    end

    def test
    end

    
end