class CashRegister
  attr_accessor :total, :discount, :items

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = [] # An empty of array of items everytime we call the class
end

def add_item(title,price,quantit =1)
  self.total += quantity * amount
  quantity.times do
    @items << title
  end
  @last_transaction = quantity * amount
end



end
