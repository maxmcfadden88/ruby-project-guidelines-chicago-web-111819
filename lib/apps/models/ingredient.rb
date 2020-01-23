class Ingredient < ActiveRecord::Base
    has_many :recipes
    has_many :dishes, through: :recipes

    def self.names_by_alpha
        ordered = self.order(:name)
        ordered.map(&:name).uniq
    end

    def find_price(ingredient)
        Ingredient.all.select do |instance|
            instance.name == ingredient
            puts instance.price
        end
    end
        

        # def show_ing_price
        #     show_price.map(&: price)

    end




end