# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

_Put or write the user story here. Add any clarifying notes you might have._

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```


_Also design the interface of each class in more detail._

```ruby
class Dish

  initialize(dish, price)
    @dish = dish # string
    @price = price #f loat
  end

  def dish
    @dish
  end

  def price
    @price
  end

end

class DishList
  def initalize
    @menu = []
  end

  def add(dish)
    @menu << dish
  end

  def remove(dish)
    #removes unavailabe dishes
  end

  def show_menu
    @ menu
  end

end

class SelectedDish
  def initalize (menu) # menu is an instance of DishList
    @menu = menu
  end

  def select_dish(dish, number) 
    # dish is a string with the dish
    # number is number of each dish
    # accumulator needed? each dish start as 0? then accumulate?
  end
end

class Receipt
    def initialize # instance of SelectedDish
        @selected_dishes = []
    def
    
    def add(dish, price, quantity)
        @selected_dishes << dish
    end

    def total
        # calculates price * quantity and puts it in an itemised list
    end
  
end


end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
    # 1 
    it "Shows menu with available dishes and prices" do
        dish_1 = Dish.new("chips", 2.99)
        dish_2 = Dish.new("burger", 7.99)
        dish_3 = Dish.new("fish and chips", 11.99)
        dish_4 = Dish.new("salad", 5.99)
        menu = DishList.new
        menu.add(dish_1)
        menu.add(dish_2)
        menu.add(dish_3)
        menu.add(dish_4)

        expect(menu.show_menu).to eq [dish_1, dish_2, dish_3, dish_4]
    end

    # 2 
    context "can choose how many of each dish you would like" do
        it "returns a receipt of dishes" do 
            dish_1 = Dish.new("chips", 2.99)
            dish_2 = Dish.new("burger", 7.99)
            dish_3 = Dish.new("fish and chips", 11.99)
            dish_4 = Dish.new("salad", 5.99)
            menu = DishList.new
            menu.add(dish_1)
            menu.add(dish_2)
            menu.add(dish_3)
            menu.add(dish_4)
            # above is the menu being created

            dish_selection = SelectedDish.new(menu)
            dish_selection.add(dish_1, 2)
            dish_selection.add(dish_4, 2)
            dish_selection.add(dish_2, 1)

            receipt = Receipt.new
            receipt.add(dish_1, 2)
            receipt.add(dish_4, 2)
            receipt.add(dish_2, 1)

            expect(receipt.total).to eq [dish_1, 2, dish_4, 2, dish_2, 1, 29.95 ]
        end
    end
end
```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE

# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
