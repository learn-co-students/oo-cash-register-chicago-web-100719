class CashRegister

    attr_accessor :total, :discount, :items
    
        def initialize(discount = 0)
            @total = 0
            @discount = discount
            @items = []
        end
    def add_item(title, price, quantity = 1)
        @last_transaction = price * quantity
        @total += @last_transaction
        quantity.times do @items << title
        end
    end
    
    def apply_discount
    if @discount == 0
    "There is no discount to apply."
    
    else @total -= (@total*(@discount)/100)
    "After the discount, the total comes to $#{@total}."
    end
    end
    
    
    def void_last_transaction
    @total -= @last_transaction
    
    
    end
    
    
    
    end
    