class Dish < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites

    def self.names_by_alpha
        ordered = self.order(:name)
        ordered.map(&:name).uniq
    end
end