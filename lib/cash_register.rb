require 'pry'
class CashRegister
attr_accessor :total, :discount, :last_transaction, :items

def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
end

def add_item(title, price, quantity = 1)
    @total += quantity * price
    @last_transaction = quantity * price
    quantity.times {@items << title}
    @items

end

def apply_discount
    if @discount > 0
    @discount /=100.to_f
    @total = @total - (@total * (@discount))
    "After the discount, the total comes to $#{total.to_i}."
    else
        "There is no discount to apply."
    end
end

def void_last_transaction
    
    @total -= @last_transaction
end



end