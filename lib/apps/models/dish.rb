class Dish < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites

    def self.names_by_alpha
        ordered = self.order(:name)
        ordered.map(&:name).uniq
    end

    # @dish_details = "Name: #{self.name} Cuisine: #{self.cuisine} Ingredients: #{self.ingredients}"

end