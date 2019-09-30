require 'pry'

class CashRegister
  
  attr_accessor :discount, :total, :items, :last_trans
  
  def initialize(discount=0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, qty = 1)
   if qty > 1
     i = 0 
     while i < qty
      @items << item 
      i += 1 
     end
   else
     @items << item
   end
   @total += (price * qty)
   @last_trans = price * qty
   @total
  end
  
  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_trans
  end
end
