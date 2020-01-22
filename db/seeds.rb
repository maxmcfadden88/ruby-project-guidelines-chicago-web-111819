require 'pry'
require 'faker'

# Recipe.destroy.all
# Ingredient.destroy.all
# Dish.destroy.all

100.times do
    Ingredient.create(name: Faker::Food.ingredient)
 end

100.times do
    Dish.create(name: Faker::Food.dish, ingredients: ingredient.all.sample(5))
end




binding.pry





