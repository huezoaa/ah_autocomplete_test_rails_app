class CreateCarros < ActiveRecord::Migration
  def change
    create_table :carros do |t|
      t.string :brand
      t.string :model
      t.string :year

      t.timestamps null: false
    end
  end
end
