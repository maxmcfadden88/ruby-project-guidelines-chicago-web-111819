class CreateIngredients < ActiveRecord::Migrate[5.2]
    def change
        create_table :ingredients do |t|
            t.integer :id
            t.string :name
            t.string :category
            t.float :price
            t.string :flavor
            t.timestamps
        end
    end
end