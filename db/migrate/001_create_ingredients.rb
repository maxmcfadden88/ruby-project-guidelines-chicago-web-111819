class CreateIngredients < ActiveRecord::Migrate[5.2]
    def change
        create_table :ingredients do |t|
            t.integer :id
            t.string :name
            t.float :price
        end
    end
end