class CashRegister
  attr_accessor :total, :discount, :quantity, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @price = price
    @quantity = quantity
    @items = []
    @transaction = []
  end
  
  def add_item(title,price,quantity = 1)
    @total += price*quantity
    @transaction << price
    x = quantity
    until x == 0 do
      @items << title 
      x -= 1
    end
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (0.01 * @discount * @total).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total = @total - @transaction.pop
  end
  
end
