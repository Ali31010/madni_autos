class CreateCars < ActiveRecord::Migration[7.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :make
      t.integer :model_year
      t.string :color
      t.integer :mileage
      t.decimal :price
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
