require 'receipt'

RSpec.describe Receipt do

    it "adds a selected item to the list" do
        receipt = Receipt.new
        expect(receipt.add("item", 1)).to eq 1
    end


    it "returns receipt with selected dishes and prices" do
        # dish_1 = double :dish_class, dish: "chips", price: 2.99
        # menu = double :dish_list
        # menu.add(dish_1)
        # choice = double :dish_selector
        receipt = Receipt.new
        item_1 = receipt.add("chips", 2)
        expect(receipt.cost(2.99)).to eq 5.98
        item_2 = receipt.add("burger", 1)
        expect(receipt.cost(7.99)).to eq 7.99
        expect(receipt.total).to eq 13.97
    end
end