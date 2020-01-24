def welcome
    puts "HELLO, WELCOME TO YOUR PERSONALIZED COOKBOOK"
    puts
    puts
    sleep(2)
end

def login_menu
    puts "PLEASE ENTER YOUR NAME"
    user_name = gets.chomp
    @logged_in_user = User.find_or_create_by(name: user_name)
    @logged_in_user
end


def user_home_page

    case 
    when @logged_in_user.dishes.length > 0     
        puts "Hi, #{@logged_in_user.name}, here are your favorite dishes:"
        puts
        puts @logged_in_user.dishes.map(&:name)
    when
        @logged_in_user.dishes.length == 0
        puts "Hi, #{@logged_in_user.name}, you have no favorites yet."
        puts
    end

end


def next_move_prompt
    sleep(2)
    puts
    puts "Add to favorites! Enter 1 to see available dishes."
    puts
    puts "Didn't like a dish? Enter 2 to delete it from your favorites."
    puts
    puts "Enter 3 to view our most-favorited dish."
    puts
    puts "Enter 'exit' to leave this app."
    gets.chomp
end


def browse_dishes
    puts Dish.names_by_alpha
    sleep(1)
    puts
    puts
end


def more_details
    puts "Enter the name of a dish to see more details."
    puts
    puts "Enter 'home' to return to your home page."

    dish_selection = gets.chomp
    if dish_selection == "home"
        return dish_selection
    end

    @selected_dish = Dish.find_by(name: dish_selection)
    sleep(2)
    clear_screen
    puts @selected_dish.name
    puts
    puts "CUISINE: #{@selected_dish.cuisine}"
    puts
    puts "INGREDIENTS: #{@selected_dish.ingredients}"
    sleep(2)
    puts
    puts
    puts "Would you like to favorite this dish? (Y/N)"
    
    y_n_response = gets.chomp
    case 
    when y_n_response == "y"
        Favorite.create(user_id: @logged_in_user.id, dish_id: @selected_dish.id)
        puts "#{@selected_dish.name} has been added to your favorites!"
        sleep(2)
        "home page"
    when y_n_response == "n"
        "home page"
    end

end


def delete_a_favorite
    clear_screen
    puts "Enter the name of the dish you'd like to delete."
    dish_selection = gets.chomp
    dish_to_delete = Dish.find_by(name: dish_selection)
    to_destroy = Favorite.find_by(user_id: @logged_in_user.id, dish_id: dish_to_delete.id)
    to_destroy.destroy
    puts
    puts "#{dish_selection} has been deleted from your favorites."
    sleep(2)
end


def most_popular_dish
    clear_screen
    current_most_popular = Dish.all[0]
    Dish.all.each {|instance|
    if instance.favorites.length > current_most_popular.favorites.length
        current_most_popular = instance
    end}
    puts current_most_popular.name
    sleep(2)
    puts
    puts "Would you like to see more info about this dish? (Y/N)"
    y_n_response = gets.chomp
    case 
    when y_n_response == "y"
        puts
        puts current_most_popular.name
        puts
        puts "CUISINE: #{current_most_popular.cuisine}"
        puts
        puts "INGREDIENTS: #{current_most_popular.ingredients}"
        sleep(2)
        puts
        puts
        puts "Would you like to favorite this dish? (Y/N)"
        y_n_response = gets.chomp
        case 
        when y_n_response == "y"
            Favorite.create(user_id: @logged_in_user.id, dish_id: current_most_popular.id)
            puts "#{current_most_popular.name} has been added to your favorites!"
            sleep(2)
            "home page"
        when y_n_response == "n"
            "home page"
        end
    when y_n_response == "n"
        "home page"
    end
end


def clear_screen
    puts "\e[H\e[2J"
end





