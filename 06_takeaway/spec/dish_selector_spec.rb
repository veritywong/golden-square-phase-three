require 'dish_selector'

RSpec.describe DishSelector do
    it "initializes menu and selects a dish" do
        menu = double :dish_list, dish: "chips"
        choice = DishSelector.new(menu)
        expect(choice.select_dish("chips", 2)).to eq 2
        
    end
end