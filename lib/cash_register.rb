require 'pry'
class CashRegister
attr_accessor :total, :discount

def initialize(discount = 0)
    @discount = discount
    @total = 0
end

def add_item(title, price, quantity = 1)
@total = quantity * price
@total
end



end