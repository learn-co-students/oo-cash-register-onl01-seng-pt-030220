class CashRegister
  
  attr_accessor :employee_discount
  
  def initialize(employee_discount = nil)
    @total = 0
    @employee_discount = employee_discount
  end
  
  # def discount
  #   @discount  = discount
  # end
  
#     def discount(number)
#     self.to_f / number.to_f * 100.0
#   end
# end

 
  
end