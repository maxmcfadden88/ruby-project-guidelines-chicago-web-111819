Recipe.destroy.all
Ingredient.destroy.all
Dish.destroy.all


100.times do
    ingredient.create(name: Faker::Food.ingredient, price: Faker::Number.decimal(l_digits: 2))
end

100.times
    dish.create(name: Faker::Food.dish)
end

100.times do 
    recipe.create(ingredient.all.sample(5)
end




