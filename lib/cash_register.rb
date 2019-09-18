class CashRegister
  attr_accessor :total, :discount,:items, :price



  def initialize(discount = 0)
    @price = []
    @items = []
    @total = 0
    @discount = discount
  end
  # def items
  #
  # end

  def add_item(title, price, quantity = 1)
     self.total += (price * quantity)
     self.price << (price * quantity)
     self.items.concat([title] * quantity)
     # self.items << title
  end

  def apply_discount

     self.total *= ((100 - self.discount) * 0.01)
     if self.discount != 0
       "After the discount, the total comes to $#{self.total.to_i}."
     else
       "There is no discount to apply."
     end
  end

  def void_last_transaction
    self.total -= self.price.last
  end
end
