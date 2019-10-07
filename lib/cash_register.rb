class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0, price = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    if @items.clear
    @total = 0
    end
  end

end
cash_register = CashRegister.new(0, 100)
cash_register.total
cash_register.add_item("eggs", 30)
cash_register.add_item("book", 15, 3)
cash_register.apply_discount
cash_register.add_item("macbook air", 1000)
cash_register.void_last_transaction
