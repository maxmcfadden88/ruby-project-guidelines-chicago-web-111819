def welcome
    puts "HELLO, WELCOME TO YOUR PERSONALIZED COOKBOOK"
end

def user_intro
    puts "PLEASE ENTER YOUR NAME"
    User.find_or_create_by(name: user_input_name)
end

def user_home
    puts "Hi, #{user_input_name}, here are your favorite dishes"
    puts User.dishes.all
end

def user_input_name
    gets.chomp
end

def user_input_option_selection
    gets.chomp
end



def clear_screen
    puts "\e[H\e[2J"
end





