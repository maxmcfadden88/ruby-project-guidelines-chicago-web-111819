class Dish < ActiveRecord::Base
    has_many :recipes
    has_many :ingredients ,through: :recipes

    def self.names_by_alpha
        ordered = self.order(:name)
        ordered.map(&:name).uniq
    end
end