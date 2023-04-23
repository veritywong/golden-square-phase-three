class DishList
    def initialize
      @menu = []
    end
  
    def add(dish)
      @menu << dish
    end
  
    def remove(dish)
      #removes unavailabe dishes
    end
  
    def show
      @menu
    end
  
end
  