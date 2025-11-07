class AddModelToCars < ActiveRecord::Migration[7.2]
  def change
    add_column :cars, :model, :string
  end
end
