
class CashRegister
    attr_accessor :total, :discount

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity
        quantity.times do 
            @items << title
        end
        @last_transaction = price * quantity
    end

    def apply_discount
        self.total -= self.total * self.discount / 100
        if self.total > 0
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= @last_transaction

    end


end