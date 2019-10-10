require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(item, cost, quantity = 1)
    i = 1 
    while i <= quantity
      @items << item
      i += 1
    end 
    self.total = total + cost * quantity
    self.last_transaction = cost * quantity
  end 
  
  def apply_discount
    if discount > 0 
      #binding.pry
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{total}."
      #binding.pry
    else
      "There is no discount to apply."
    end 
  end 
  
  def items
    @items
  end 
  
  def void_last_transaction
    self.total = total - last_transaction
  end
end 