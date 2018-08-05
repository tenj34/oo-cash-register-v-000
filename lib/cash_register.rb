class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = [] # An empty of array of items everytime we call the class
end

  def add_item(title,price,quantity =1)
    self.total += quantity * amount
    quantity.times do
      @items << title
    end
    @last_transaction = quantity * amount
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total * ((100.0 - discount) / 100.0)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
