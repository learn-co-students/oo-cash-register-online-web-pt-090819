class CashRegister
  attr_accessor :total, :discount, :items, :price, :quantity
  @items=[]
  def initialize(discount=0)
    @total=0.0
    @discount=discount
    @items=[]
  end
    
  def add_item(title, price, quantity=1)
    @price=price
    @quantity=quantity
    counter=0
    if quantity>1
      while counter<quantity
      @items<< title
      counter+=1
      end
    else
      @items << title
    end
    @total+=price*quantity
  end
  
  def apply_discount
    if @discount !=0
    percent=1-@discount.to_f/100
    @total=@total.to_f*percent
    return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total-= @price*@quantity
    
  end

end
