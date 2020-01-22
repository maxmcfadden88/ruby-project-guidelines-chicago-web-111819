require 'pry'
require 'faker'

# Recipe.destroy_all
# Ingredient.destroy_all
# Dish.destroy_all

100.times do
    Ingredient.create(name: Faker::Food.ingredient)
 end
 
100.times do
    Dish.create(name: Faker::Food.dish)
end

100.times do
    Recipe.create(dish_id: rand(1..100), ingredient_id: rand(1..100))
end