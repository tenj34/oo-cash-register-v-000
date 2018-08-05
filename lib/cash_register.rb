class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount # optionally takes a discount starts at 0
    @items = [] # An empty of array of items everytime we call the class
  end

  def add_item(title, price, quantity = 1) #accepts title, price and increases the total of an item
   self.total += price * quantity
   quantity.times do
     @items << title
   end
   self.last_transaction = price * quantity
  end

  def apply_discount
    if self.discount == 0
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
