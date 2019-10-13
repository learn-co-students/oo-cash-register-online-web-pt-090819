require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :items, :prices
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
    #@quantity = quantity
    
  end 
  
  def self.total
    total
  end
  
  # def self.quantity
  #   quantity
  # end
  
  def add_item(item, price, quantity = 1)
    
      quantity.times {@items << item}
      @prices << price
      self.total = self.total + (price * quantity)
    
  end
  
  def apply_discount
   
    # x = @discount / 100.0 
    # y = 1.0 - x
    # z = self.total * y
   # binding.pry
    if discount == 0 
      return "There is no discount to apply."
    else
      
         x = @discount / 100.0 
    
    y = 1.0 - x
  
    self.total = self.total * y
    
    return "After the discount, the total comes to $#{self.total.floor}."
    
  end
  end
  
  def items
    @items
    
  end
  
  def void_last_transaction
    x = @prices.pop
    if @prices == []
      self.total = 0.00
    else
      self.total -= x
    end
  end
    
    
    
 
  
end
