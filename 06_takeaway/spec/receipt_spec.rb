require 'receipt'

RSpec.describe Receipt do

    it "adds a selected item to the list" do
        receipt = Receipt.new
        expect(receipt.add("item", 1)).to eq ["item", 1]
    end


    xit "returns receipt with selected dishes and prices" do
        dish_1 = Dish.new("chips", 2.99)
        menu = DishList.new
        menu.add(dish_1)
        choice = DishSelector.new(menu)
        choice.select_dish("chips", 2)
        receipt = Receipt.new
        item_1 = receipt.add("chips", 2)
        expect(receipt.cost(2.99)).to eq 5.98
        item_2 = receipt.add("burger", 1)
        expect(receipt.cost(7.99)).to eq 7.99
        expect(receipt.total).to eq 13.97
    end
end