class CreateRecipes < ActiveRecord::Migration[5.0]
    def change
        create_table :recipes do |t|
            t.integer :dish_id
            t.integer :ingredient_id
        end
    end
end