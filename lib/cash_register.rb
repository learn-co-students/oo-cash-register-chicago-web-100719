class CashRegister
    attr_reader :discount
    attr_accessor :total

    def initialize(discount=0)
        @total = 0
        @discount = discount 
        @array = []
    end

    def add_item(title, price, quantity = 1)
        @total += (price * quantity)
        quantity.times do @array << title
        end
        @last_transaction_price = price
        @last_transaction_amount = quantity
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
        @total -= (@total * (@discount.to_f / 100))
        return "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def items
        @array
    end

    def void_last_transaction
        @total -= (@last_transaction_price * @last_transaction_amount)
    end
end
