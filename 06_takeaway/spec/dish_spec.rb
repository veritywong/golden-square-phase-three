require 'dish'

RSpec.describe Dish do

    context "adds and then shows price and dish" do

        it "shows dish & price" do
            dish = Dish.new("chips", 2.99)
            expect(dish.dish).to eq "chips"
            expect(dish.price).to eq 2.99
        end
        
    end
end
