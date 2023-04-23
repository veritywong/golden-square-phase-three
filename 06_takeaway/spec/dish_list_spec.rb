require 'dish_list'

RSpec.describe DishList do
    it "creates an empty list" do
        menu = DishList.new
        expect(menu.show).to eq []
    end

    it "adds dishes to the list" do
        dish_1 = double :dish_1, dish: "chips", price: 2.99
        menu = DishList.new
        menu.add(dish_1)
        expect(menu.show).to eq [dish_1]
    end

end