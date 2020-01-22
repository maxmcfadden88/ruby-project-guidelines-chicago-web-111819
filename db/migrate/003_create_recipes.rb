class CreateRecipes < ActiveRecord::Migrate[5.2]
    def change
        create_table :recipes do |t|
            t.integer = :id
        end
end