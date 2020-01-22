require_relative '../config/environment'
require_relative 'runner_methods'

ActiveRecord::Base.logger = nil

# 1 View a list of dishes *****
# 2 View ingredients in a dish
# 3 Input an ingredient and see dishes that include/do not include it
# 4 Create a dish by adding ingredients

clear_screen

puts "HELLO, WELCOME TO COOKBOOK"

puts "Please select from the following options:"

puts "1: View a list of available dishes"
puts "2: View a list of ingredient used in this cookbook"
puts "3: View our ingredientsd arranged by price"

if user_input == "1"
    puts Dish.names_by_alpha
    # puts "Enter "1" to return to home or enter a dish name to see its ingredients"
elsif user_input == "2"
    puts Ingredient.names_by_alpha
else
    clear_screen
end

