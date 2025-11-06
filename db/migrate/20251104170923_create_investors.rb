class CreateInvestors < ActiveRecord::Migration[7.2]
  def change
    create_table :investors do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
