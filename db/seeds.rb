require 'pry'
require 'faker'

100.times do
    Ingredient.create(name: Faker::Food.ingredient, price: rand(1..20))
 end
 
100.times do
    Dish.create(name: Faker::Food.dish)
end

100.times do
    Recipe.create(dish_id: rand(1..100), ingredient_id: rand(1..100))
end
