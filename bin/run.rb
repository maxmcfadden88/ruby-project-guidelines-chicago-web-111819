require_relative '../config/environment'
require_relative 'runner_methods'

ActiveRecord::Base.logger = nil

# ENTER A UDERNAME(C)****
# VIEW LIST OF dishes (R) ***
# SELECT A DISH FOR MORE INFO (R) ****
# ADD A DISH TO YOUR FAVORITES (U) ****
# DELETE A DISH FROM YOUR FAVORITES (D)

# REACH GOALS ENTER AN Ingredient TO SEARCH
# VIEW MOST FAVORITED DISHES

USER_INPUT = ""

while USER_INPUT != "exit"
    case USER_INPUT
    when ""
        clear_screen
         welcome
         login_menu
         USER_INPUT = "home page"

    when "home page"
        clear_screen
        user_home_page
        USER_INPUT = next_move_prompt
    
    when "1"
        browse_dishes
        USER_INPUT = more_details
    
    when "home"
        user_home_page
        USER_INPUT = next_move_prompt


    when "2"
        delete_a_favorite

    when "3"
        puts "you selected 3"

    end
end

puts "Thanks for using our Cookbook app!"
   




# case user_input_option_selection
# when "1"
#     puts Dish.names_by_alpha

# when "2"
    

# when "3"

# else
#     clear_screen
# end

