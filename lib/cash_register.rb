require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :title, :price, :items, :last_transaction_price
  
  def initialize(discount = 0.0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 0)
  # if quantity is given, i.e. anything other than 0
    if quantity.positive? 
      
  #multiply the price by the quantity and add it to the total
      @last_transaction_price = price * quantity
      @total += price * quantity
      
  #add the title to the items array however many times quantity says to    
      quantity.times do 
        @items << title
      end
    else 
  #otherwise if no quantity is given, just add the title to the items array and add the price    
      @items << title
      @last_transaction_price = price
      @total += price
    end
  end 
  
  def apply_discount
    if @discount.positive?
      @total -= (@total * (@discount.to_f/100))
      p "After the discount, the total comes to $#{@total.to_i}."
    else
      p "There is no discount to apply."
    end
    
    #binding.pry
  end 
  
  def items
    @items
  end
  
  def void_last_transaction
    @items.pop
    @total = @total - @last_transaction_price
   # binding.pry
  end
  
  
end 
