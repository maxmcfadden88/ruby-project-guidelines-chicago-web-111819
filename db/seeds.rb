require 'pry'
require 'faker'

 Dish.destroy_all
 User.destroy_all
 Favorite.destroy_all

    chili = Dish.create(name: "Chili", ingredients: "Beans, Meat, Chili Powder", cuisine: "American")
    pad_thai = Dish.create(name: "Pad Thai", ingredients: "Rice Noodles, Peanuts, Bean Sprouts", cuisine: "Thai")
    lo_mein = Dish.create(name: "Lo Mein", ingredients: "Egg Noodles, Soy Sauce, Chicken", cuisine: "Chinese")
    pasta_alfredo = Dish.create(name: "Linguine Alfredo", ingredients: "Linguine, Heavy Cream, Cheese", cuisine: "Italian")
    steak_fritte = Dish.create(name: "Steak Fritte", ingredients: "Steak, French Fries, Rosemary", cuisine: "French")
    pho = Dish.create(name: "Pho", ingredients: "Bone Broth, Rice Noodles, Bean Sprouts", cuisine: "Vietnamese")
    tacos = Dish.create(name: "Tacos Al Pastor", ingredients: "Tortilla, Pork, Pineapple", cuisine: "Mexican")
    mussels = Dish.create(name: "Mussels in beer broth", ingredients: "Mussels, Beer, Stock", cuisine: "American")
    sushi = Dish.create(name: "Sushi", ingredients: "Rice, Fish, Nori", cuisine: "Japanese")
    chicken_soup = Dish.create(name: "Chicken Noodle Soup", ingredients: "Broth, Noodles, Chicken", cuisine: "American")


10.times do
    User.create(name: Faker::Name.name)
end

5.times do
    Favorite.create(user_id: rand(1..10), dish_id: rand(1..10))
end
