class DishSelector

    def initialize(menu) # menu is an instance of DishList
      @menu = menu
    end
  
    def select_dish(dish, number)
      @selection = Hash.new()
      return @selection[dish] = number
      #return "#{dish}, #{number.to_i}"
    end

end