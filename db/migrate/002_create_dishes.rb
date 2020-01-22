class CreateDishes < ActiveRecord::Migrate[5.2]
    def change
        create_table :dishes do |t|
            t.integer = :id
            t.string = :name
        end

end