require 'dish'
require 'dish_list'
require 'dish_selector'
require 'receipt'

RSpec.describe "dish, menu and receipt integration" do
    it "adds dish instances into the menu" do
        dish_1 = Dish.new("chips", 2.99)
        menu = DishList.new
        menu.add(dish_1)
        expect(menu.show).to eq [dish_1]
    end

    it "initializes menu and selects a dish" do
        dish_1 = Dish.new("chips", 2.99)
        menu = DishList.new
        menu.add(dish_1)
        choice = DishSelector.new(menu)
        expect(choice.select_dish("chips", 2)).to eq 2
    end


    it "returns receipt with selected dishes and prices" do
        dish_1 = Dish.new("chips", 2.99)
        menu = DishList.new
        menu.add(dish_1)
        choice = DishSelector.new(menu)
        selection = choice.select_dish("chips", 2)
        receipt = Receipt.new
        item_1 = receipt.add("chips", 2)
        expect(receipt.cost(2.99)).to eq 5.98
        item_2 = receipt.add("burger", 1)
        expect(receipt.cost(7.99)).to eq 7.99
        expect(receipt.total).to eq 13.97
    end

end
