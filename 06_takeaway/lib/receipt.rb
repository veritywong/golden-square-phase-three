class Receipt
    def initialize
        @price_list = []
    end

    def add(item, quantity)
        @item_chosen = Hash.new(0)
        @item_chosen[item] = quantity
    end

    def cost(price)
        @item_chosen.each do |item, quantity|
            calculated_price = quantity * price.to_f
            @price_list <<  calculated_price
            return calculated_price
        end
    end

    def total
        @price_list.sum
    end

end


# receipt = Receipt.new
# p receipt.add("burger", 1)
# p receipt.cost(7.99)
# p receipt.add("chips", 2)
# p receipt.cost(2.99)

# p receipt.total


