class Dish

    def initialize(dish, price)
      @dish = dish # string
      @price = price.to_f #f loat
    end
  
    def dish
      @dish
    end
  
    def price
      @price
    end
  
end

dish = Dish.new("chips", 2.99)
p dish.dish
p dish.price