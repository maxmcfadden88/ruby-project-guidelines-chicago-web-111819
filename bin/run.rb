require_relative '../config/environment'
require_relative 'runner_methods'

ActiveRecord::Base.logger = nil

# ENTER A UDERNAME(C)
# VIEW LIST OF dishes (R) ***
# SELECT A DISH FOR MORE INFO (R)
# ADD A DISH TO YOUR FAVORITES (U)
# DELETE A DISH FROM YOUR FAVORITES (D)
# REACH GOALS ENTER AN Ingredient TO SEARCH
# VIEW MOST FAVORITED DISHES

#edit username
#add favorite
#delete favorite
#replace favorite



clear_screen

welcome

user_intro

user_home

    # puts "Please select from the following options"

    # puts "1: Discover a new favorite! Browse our available dishes."

    # puts "2: Edit your account"




case user_input_option_selection
when "1"
    puts Dish.names_by_alpha

when "2"
    

when "3"

else
    clear_screen
end

