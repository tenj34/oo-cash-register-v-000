class CashRegister
  attr_accessor :total, :discount, :items

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = [] # An empty of array of items everytime we call the class
end



end
