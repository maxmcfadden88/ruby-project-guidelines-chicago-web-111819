class Dish < ActiveRecord::Base
    has_many :ingredients ,through: :recipes
end